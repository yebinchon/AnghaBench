; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_submit_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { void (%struct.dm_buffer*, i32)*, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.dm_buffer*)*, i64 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@DM_BUFIO_WRITE_ALIGN = common dso_local global i32 0, align 4
@DATA_MODE_VMALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, i32, void (%struct.dm_buffer*, i32)*)* @submit_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_io(%struct.dm_buffer* %0, i32 %1, void (%struct.dm_buffer*, i32)* %2) #0 {
  %4 = alloca %struct.dm_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.dm_buffer*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_buffer* %0, %struct.dm_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.dm_buffer*, i32)* %2, void (%struct.dm_buffer*, i32)** %6, align 8
  %11 = load void (%struct.dm_buffer*, i32)*, void (%struct.dm_buffer*, i32)** %6, align 8
  %12 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %12, i32 0, i32 0
  store void (%struct.dm_buffer*, i32)* %11, void (%struct.dm_buffer*, i32)** %13, align 8
  %14 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %26, %31
  store i32 %32, i32* %8, align 4
  br label %45

33:                                               ; preds = %3
  %34 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SECTOR_SHIFT, align 4
  %43 = lshr i32 %41, %42
  %44 = mul i32 %36, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %33, %23
  %46 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @REQ_OP_WRITE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SECTOR_SHIFT, align 4
  %65 = lshr i32 %63, %64
  store i32 %65, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %127

66:                                               ; preds = %45
  %67 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32 (%struct.dm_buffer*)*, i32 (%struct.dm_buffer*)** %70, align 8
  %72 = icmp ne i32 (%struct.dm_buffer*)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %75 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32 (%struct.dm_buffer*)*, i32 (%struct.dm_buffer*)** %77, align 8
  %79 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %80 = call i32 %78(%struct.dm_buffer* %79)
  br label %81

81:                                               ; preds = %73, %66
  %82 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  %85 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* @DM_BUFIO_WRITE_ALIGN, align 4
  %89 = sub i32 0, %88
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @DM_BUFIO_WRITE_ALIGN, align 4
  %93 = sub i32 %92, 1
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @DM_BUFIO_WRITE_ALIGN, align 4
  %97 = sub i32 0, %96
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %102 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %101, i32 0, i32 5
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ugt i32 %100, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %81
  %111 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %112 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %111, i32 0, i32 5
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %110, %81
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @SECTOR_SHIFT, align 4
  %119 = lshr i32 %117, %118
  %120 = load i32, i32* %8, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub i32 %122, %123
  %125 = load i32, i32* @SECTOR_SHIFT, align 4
  %126 = lshr i32 %124, %125
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %116, %58
  %128 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %129 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DATA_MODE_VMALLOC, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @use_bio(%struct.dm_buffer* %134, i32 %135, i32 %136, i32 %137, i32 %138)
  br label %147

140:                                              ; preds = %127
  %141 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @use_dmio(%struct.dm_buffer* %141, i32 %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %140, %133
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @use_bio(%struct.dm_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @use_dmio(%struct.dm_buffer*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
