; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_read_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627hf_data = type { i32, i64 }

@W83781D_ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@W83781D_DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83627hf_data*, i32)* @w83627hf_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627hf_read_value(%struct.w83627hf_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83627hf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w83627hf_data* %0, %struct.w83627hf_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %8 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 65280
  %12 = icmp eq i32 %11, 256
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65280
  %16 = icmp eq i32 %15, 512
  br i1 %16, label %17, label %31

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 80
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 83
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 85
  br label %29

29:                                               ; preds = %25, %21, %17
  %30 = phi i1 [ true, %21 ], [ true, %17 ], [ %28, %25 ]
  br label %31

31:                                               ; preds = %29, %13
  %32 = phi i1 [ false, %13 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @w83627hf_set_bank(%struct.w83627hf_data* %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %40 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @W83781D_ADDR_REG_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb_p(i32 %38, i64 %43)
  %45 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %46 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @W83781D_DATA_REG_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inb_p(i64 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %31
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 255
  %56 = add nsw i32 %55, 1
  %57 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %58 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @W83781D_ADDR_REG_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb_p(i32 %56, i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 8
  %65 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %66 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @W83781D_DATA_REG_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @inb_p(i64 %69)
  %71 = add nsw i32 %64, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %53, %31
  %73 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @w83627hf_reset_bank(%struct.w83627hf_data* %73, i32 %74)
  %76 = load %struct.w83627hf_data*, %struct.w83627hf_data** %3, align 8
  %77 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627hf_set_bank(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @w83627hf_reset_bank(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
