; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_check_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_check_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dmz_dev* }
%struct.dmz_dev = type { i32, i32 }
%struct.dmz_super = type { i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@DMZ_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid checksum (needed 0x%08x, got 0x%08x)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DMZ_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid meta magic (needed 0x%08x, got 0x%08x)\00", align 1
@DMZ_META_VER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid meta version (needed %d, got %d)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid number of metadata blocks\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Invalid number of reserved sequential zones\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid number of chunks %u / %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.dmz_super*)* @dmz_check_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_check_sb(%struct.dmz_metadata* %0, %struct.dmz_super* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.dmz_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmz_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store %struct.dmz_super* %1, %struct.dmz_super** %5, align 8
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %12, i32 0, i32 9
  %14 = load %struct.dmz_dev*, %struct.dmz_dev** %13, align 8
  store %struct.dmz_dev* %14, %struct.dmz_dev** %8, align 8
  %15 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %16 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le64_to_cpu(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %20 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @le32_to_cpu(i64 %21)
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  %24 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %25 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %28 = bitcast %struct.dmz_super* %27 to i8*
  %29 = load i32, i32* @DMZ_BLOCK_SIZE, align 4
  %30 = call i64 @crc32_le(i32 %26, i8* %28, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %189

41:                                               ; preds = %2
  %42 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %43 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @le32_to_cpu(i64 %44)
  %46 = load i32, i32* @DMZ_MAGIC, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %50 = load i32, i32* @DMZ_MAGIC, align 4
  %51 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %52 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @le32_to_cpu(i64 %53)
  %55 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54)
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %189

58:                                               ; preds = %41
  %59 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %60 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @le32_to_cpu(i64 %61)
  %63 = load i32, i32* @DMZ_META_VER, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %67 = load i32, i32* @DMZ_META_VER, align 4
  %68 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %69 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @le32_to_cpu(i64 %70)
  %72 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %189

75:                                               ; preds = %58
  %76 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %77 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @le32_to_cpu(i64 %78)
  %80 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %81 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %79, %82
  %84 = sub i32 %83, 1
  %85 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %86 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = lshr i32 %84, %87
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %75
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %94 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp uge i32 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91, %75
  %98 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %99 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @ENXIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %189

102:                                              ; preds = %91
  %103 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %104 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @le32_to_cpu(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %110 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @le32_to_cpu(i64 %111)
  %113 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %114 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = sub i32 %115, %116
  %118 = icmp uge i32 %112, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %108, %102
  %120 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %121 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %189

124:                                              ; preds = %108
  %125 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %126 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = mul i32 %128, 2
  %130 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %131 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @le32_to_cpu(i64 %132)
  %134 = add i32 %129, %133
  %135 = sub i32 %127, %134
  store i32 %135, i32* %7, align 4
  %136 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %137 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @le32_to_cpu(i64 %138)
  %140 = load i32, i32* %7, align 4
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %124
  %143 = load %struct.dmz_dev*, %struct.dmz_dev** %8, align 8
  %144 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %145 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @le32_to_cpu(i64 %146)
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (%struct.dmz_dev*, i8*, ...) @dmz_dev_err(%struct.dmz_dev* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i32, i32* @ENXIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %189

152:                                              ; preds = %124
  %153 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %154 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @le32_to_cpu(i64 %155)
  %157 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %158 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %160 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @le32_to_cpu(i64 %161)
  %163 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %164 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %166 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @le32_to_cpu(i64 %167)
  %169 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %170 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %172 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @le32_to_cpu(i64 %173)
  %175 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %176 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load %struct.dmz_super*, %struct.dmz_super** %5, align 8
  %178 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @le32_to_cpu(i64 %179)
  %181 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %182 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %185 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %184, i32 0, i32 7
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %188 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 8
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %152, %142, %119, %97, %65, %48, %34
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @crc32_le(i32, i8*, i32) #1

declare dso_local i32 @dmz_dev_err(%struct.dmz_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
