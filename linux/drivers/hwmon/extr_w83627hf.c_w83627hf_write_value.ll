; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_write_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_w83627hf_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627hf_data = type { i32, i64 }

@W83781D_ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@W83781D_DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83627hf_data*, i32, i32)* @w83627hf_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627hf_write_value(%struct.w83627hf_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.w83627hf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w83627hf_data* %0, %struct.w83627hf_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %9 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 65280
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 65280
  %17 = icmp eq i32 %16, 512
  br i1 %17, label %18, label %28

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 83
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 85
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i1 [ false, %14 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @w83627hf_set_bank(%struct.w83627hf_data* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  %36 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %37 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @W83781D_ADDR_REG_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb_p(i32 %35, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 8
  %47 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %48 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @W83781D_DATA_REG_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb_p(i32 %46, i64 %51)
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 255
  %55 = add nsw i32 %54, 1
  %56 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %57 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @W83781D_ADDR_REG_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outb_p(i32 %55, i64 %60)
  br label %62

62:                                               ; preds = %44, %28
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 255
  %65 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %66 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @W83781D_DATA_REG_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb_p(i32 %64, i64 %69)
  %71 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @w83627hf_reset_bank(%struct.w83627hf_data* %71, i32 %72)
  %74 = load %struct.w83627hf_data*, %struct.w83627hf_data** %4, align 8
  %75 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627hf_set_bank(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @w83627hf_reset_bank(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
