; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_calculate_device_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_calculate_device_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i64, i64, i64, i32, i64, i32, i32, i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@SB_SECTORS = common dso_local global i64 0, align 8
@METADATA_PADDING_SECTORS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_c*)* @calculate_device_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_device_limits(%struct.dm_integrity_c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_integrity_c*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %3, align 8
  %9 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %10 = call i32 @calculate_journal_section_size(%struct.dm_integrity_c* %9)
  %11 = load i64, i64* @SB_SECTORS, align 8
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %13 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %12, i32 0, i32 11
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %16 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 %14, %17
  %19 = add nsw i64 %11, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @METADATA_PADDING_SECTORS, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %25 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @UINT_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %1
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %181

35:                                               ; preds = %28
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %38 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %40 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %114, label %43

43:                                               ; preds = %35
  %44 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %45 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %48 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %47, i32 0, i32 9
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %53 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %52, i32 0, i32 9
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %51, %56
  %58 = shl i64 %46, %57
  %59 = load i32, i32* @SECTOR_SHIFT, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* @METADATA_PADDING_SECTORS, align 4
  %62 = shl i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = call i32 @roundup(i64 %58, i64 %63)
  %65 = load i32, i32* @SECTOR_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %68 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %70 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %73 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %71, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %43
  %79 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %80 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @__ffs(i32 %81)
  %83 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %84 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  br label %88

85:                                               ; preds = %43
  %86 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %87 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %86, i32 0, i32 5
  store i32 -1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %78
  %89 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %90 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %91 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @get_area_and_offset(%struct.dm_integrity_c* %89, i32 %93, i64* %6, i64* %7)
  %95 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @get_data_sector(%struct.dm_integrity_c* %95, i64 %96, i64 %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %101 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %88
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %107 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %88
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %181

113:                                              ; preds = %104
  br label %180

114:                                              ; preds = %35
  %115 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %116 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %119 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %118, i32 0, i32 9
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = ashr i32 %117, %123
  %125 = sext i32 %124 to i64
  %126 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %127 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = mul nsw i64 %125, %128
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %132 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SECTOR_SHIFT, align 4
  %135 = add nsw i32 %133, %134
  %136 = shl i32 1, %135
  %137 = sub i32 %136, 1
  %138 = zext i32 %137 to i64
  %139 = add nsw i64 %130, %138
  %140 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %141 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SECTOR_SHIFT, align 4
  %144 = add nsw i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = ashr i64 %139, %145
  store i64 %146, i64* %8, align 8
  %147 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %148 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = zext i32 %149 to i64
  %152 = shl i64 %150, %151
  store i64 %152, i64* %8, align 8
  %153 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %154 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %8, align 8
  %157 = add nsw i64 %155, %156
  %158 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %159 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %172, label %162

162:                                              ; preds = %114
  %163 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %164 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add nsw i64 %165, %166
  %168 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %169 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %162, %114
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %181

175:                                              ; preds = %162
  %176 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %177 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %176, i32 0, i32 3
  store i32 1, i32* %177, align 8
  %178 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %3, align 8
  %179 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %178, i32 0, i32 5
  store i32 0, i32* %179, align 8
  br label %180

180:                                              ; preds = %175, %113
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %172, %110, %32
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @calculate_journal_section_size(%struct.dm_integrity_c*) #1

declare dso_local i32 @roundup(i64, i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @get_area_and_offset(%struct.dm_integrity_c*, i32, i64*, i64*) #1

declare dso_local i64 @get_data_sector(%struct.dm_integrity_c*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
