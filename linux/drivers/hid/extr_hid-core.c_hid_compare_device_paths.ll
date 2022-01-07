; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_compare_device_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_compare_device_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_compare_device_paths(%struct.hid_device* %0, %struct.hid_device* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_device* %1, %struct.hid_device** %6, align 8
  store i8 %2, i8* %7, align 1
  %10 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8, i8* %7, align 1
  %14 = call i32 @strrchr(i32 %12, i8 signext %13)
  %15 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8, i8* %7, align 1
  %23 = call i32 @strrchr(i32 %21, i8 signext %22)
  %24 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31, %3
  store i32 0, i32* %4, align 4
  br label %50

38:                                               ; preds = %34
  %39 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %43 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @strncmp(i32 %41, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %38, %37
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @strrchr(i32, i8 signext) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
