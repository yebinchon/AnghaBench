; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_load_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_load_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Read primary super block failed\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Read secondary super block failed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"No valid super block found\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Recovery failed\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Using super block %u (gen %llu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*)* @dmz_load_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_load_sb(%struct.dmz_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i64], align 16
  %6 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  %7 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = bitcast [2 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %10 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %11 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @dmz_start_block(%struct.dmz_metadata* %9, i32 %12)
  %14 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %15 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %14, i32 0, i32 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i64 %13, i64* %18, align 8
  %19 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %20 = call i32 @dmz_get_sb(%struct.dmz_metadata* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @dmz_dev_err(%struct.TYPE_6__* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %183

29:                                               ; preds = %1
  %30 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %31 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %32 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @dmz_check_sb(%struct.dmz_metadata* %30, %struct.TYPE_7__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %29
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %43 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %49 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %52 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %50, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %47, %57
  %59 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %60 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %59, i32 0, i32 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i64 %58, i64* %63, align 8
  %64 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %65 = call i32 @dmz_get_sb(%struct.dmz_metadata* %64, i32 1)
  store i32 %65, i32* %6, align 4
  br label %69

66:                                               ; preds = %29
  %67 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %68 = call i32 @dmz_lookup_secondary_sb(%struct.dmz_metadata* %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %40
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %74 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @dmz_dev_err(%struct.TYPE_6__* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %183

78:                                               ; preds = %69
  %79 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %80 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %81 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %80, i32 0, i32 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = call i32 @dmz_check_sb(%struct.dmz_metadata* %79, %struct.TYPE_7__* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %78
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %101 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = call i32 @dmz_dev_err(%struct.TYPE_6__* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %183

106:                                              ; preds = %95, %91
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %112 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %111, i32 0, i32 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @le64_to_cpu(i32 %118)
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 %119, i64* %120, align 16
  br label %124

121:                                              ; preds = %106
  %122 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %123 = call i32 @dmz_recover_mblocks(%struct.dmz_metadata* %122, i32 0)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %110
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %130 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %129, i32 0, i32 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @le64_to_cpu(i32 %136)
  %138 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 %137, i64* %138, align 8
  br label %142

139:                                              ; preds = %124
  %140 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %141 = call i32 @dmz_recover_mblocks(%struct.dmz_metadata* %140, i32 1)
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %139, %128
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %147 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %146, i32 0, i32 3
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = call i32 @dmz_dev_err(%struct.TYPE_6__* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %183

152:                                              ; preds = %142
  %153 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %154 = load i64, i64* %153, align 16
  %155 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp sge i64 %154, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %160 = load i64, i64* %159, align 16
  %161 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %162 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %164 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %163, i32 0, i32 1
  store i32 0, i32* %164, align 4
  br label %172

165:                                              ; preds = %152
  %166 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %169 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %171 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %170, i32 0, i32 1
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %165, %158
  %173 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %174 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %173, i32 0, i32 3
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %177 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %180 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @dmz_dev_debug(%struct.TYPE_6__* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %178, i64 %181)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %172, %145, %99, %72, %23
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dmz_start_block(%struct.dmz_metadata*, i32) #2

declare dso_local i32 @dmz_get_sb(%struct.dmz_metadata*, i32) #2

declare dso_local i32 @dmz_dev_err(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @dmz_check_sb(%struct.dmz_metadata*, %struct.TYPE_7__*) #2

declare dso_local i32 @dmz_lookup_secondary_sb(%struct.dmz_metadata*) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @dmz_recover_mblocks(%struct.dmz_metadata*, i32) #2

declare dso_local i32 @dmz_dev_debug(%struct.TYPE_6__*, i8*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
