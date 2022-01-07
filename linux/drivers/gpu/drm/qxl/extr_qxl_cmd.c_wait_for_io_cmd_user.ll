; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_wait_for_io_cmd_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_wait_for_io_cmd_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i64, i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, i32, i64, i32)* @wait_for_io_cmd_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_io_cmd_user(%struct.qxl_device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %13 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %18 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %21 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %20, i32 0, i32 3
  %22 = call i32 @atomic_read(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %24 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %33 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %36 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %35, i32 0, i32 3
  %37 = call i32 @atomic_read(i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 5, %41
  %43 = call i32 @wait_event_interruptible_timeout(i32 %34, i32 %40, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %57

44:                                               ; preds = %28
  %45 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %46 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %49 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %48, i32 0, i32 3
  %50 = call i32 @atomic_read(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 5, %54
  %56 = call i32 @wait_event_timeout(i32 %47, i32 %53, i32 %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %44, %31
  %58 = load i32, i32* %11, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %102

61:                                               ; preds = %57
  %62 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %63 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %62, i32 0, i32 3
  %64 = call i32 @atomic_read(i32* %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %4
  %66 = load i32, i32* %6, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @outb(i32 %66, i64 %67)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  %71 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %72 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %65
  %76 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %77 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %80 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %79, i32 0, i32 3
  %81 = call i32 @atomic_read(i32* %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @HZ, align 4
  %86 = mul nsw i32 5, %85
  %87 = call i32 @wait_event_interruptible_timeout(i32 %78, i32 %84, i32 %86)
  store i32 %87, i32* %11, align 4
  br label %101

88:                                               ; preds = %65
  %89 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %90 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %93 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %92, i32 0, i32 3
  %94 = call i32 @atomic_read(i32* %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 5, %98
  %100 = call i32 @wait_event_timeout(i32 %91, i32 %97, i32 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %88, %75
  br label %102

102:                                              ; preds = %101, %60
  %103 = load i32, i32* %11, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %108 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %107, i32 0, i32 2
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %11, align 4
  ret i32 %110
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
