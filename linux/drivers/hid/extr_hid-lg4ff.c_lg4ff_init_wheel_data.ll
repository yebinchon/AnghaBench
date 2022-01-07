; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_init_wheel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_init_wheel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg4ff_wheel_data = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.lg4ff_wheel = type { i32, i32, i32, i32 }
%struct.lg4ff_multimode_wheel = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lg4ff_wheel_data*, %struct.lg4ff_wheel*, %struct.lg4ff_multimode_wheel*, i32)* @lg4ff_init_wheel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lg4ff_init_wheel_data(%struct.lg4ff_wheel_data* %0, %struct.lg4ff_wheel* %1, %struct.lg4ff_multimode_wheel* %2, i32 %3) #0 {
  %5 = alloca %struct.lg4ff_wheel_data*, align 8
  %6 = alloca %struct.lg4ff_wheel*, align 8
  %7 = alloca %struct.lg4ff_multimode_wheel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lg4ff_wheel_data, align 8
  store %struct.lg4ff_wheel_data* %0, %struct.lg4ff_wheel_data** %5, align 8
  store %struct.lg4ff_wheel* %1, %struct.lg4ff_wheel** %6, align 8
  store %struct.lg4ff_multimode_wheel* %2, %struct.lg4ff_multimode_wheel** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.lg4ff_multimode_wheel*, %struct.lg4ff_multimode_wheel** %7, align 8
  %14 = icmp ne %struct.lg4ff_multimode_wheel* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.lg4ff_multimode_wheel*, %struct.lg4ff_multimode_wheel** %7, align 8
  %17 = getelementptr inbounds %struct.lg4ff_multimode_wheel, %struct.lg4ff_multimode_wheel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.lg4ff_multimode_wheel*, %struct.lg4ff_multimode_wheel** %7, align 8
  %20 = getelementptr inbounds %struct.lg4ff_multimode_wheel, %struct.lg4ff_multimode_wheel* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.lg4ff_multimode_wheel*, %struct.lg4ff_multimode_wheel** %7, align 8
  %23 = getelementptr inbounds %struct.lg4ff_multimode_wheel, %struct.lg4ff_multimode_wheel* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  br label %25

25:                                               ; preds = %15, %4
  %26 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 0
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 1
  %29 = load i8*, i8** %11, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 3
  %33 = load %struct.lg4ff_wheel*, %struct.lg4ff_wheel** %6, align 8
  %34 = getelementptr inbounds %struct.lg4ff_wheel, %struct.lg4ff_wheel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 4
  %37 = load %struct.lg4ff_wheel*, %struct.lg4ff_wheel** %6, align 8
  %38 = getelementptr inbounds %struct.lg4ff_wheel, %struct.lg4ff_wheel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 8
  %40 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 5
  %41 = load %struct.lg4ff_wheel*, %struct.lg4ff_wheel** %6, align 8
  %42 = getelementptr inbounds %struct.lg4ff_wheel, %struct.lg4ff_wheel* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 6
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 7
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.lg4ff_wheel_data, %struct.lg4ff_wheel_data* %12, i32 0, i32 8
  %48 = load %struct.lg4ff_wheel*, %struct.lg4ff_wheel** %6, align 8
  %49 = getelementptr inbounds %struct.lg4ff_wheel, %struct.lg4ff_wheel* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %47, align 8
  %51 = load %struct.lg4ff_wheel_data*, %struct.lg4ff_wheel_data** %5, align 8
  %52 = call i32 @memcpy(%struct.lg4ff_wheel_data* %51, %struct.lg4ff_wheel_data* %12, i32 48)
  ret void
}

declare dso_local i32 @memcpy(%struct.lg4ff_wheel_data*, %struct.lg4ff_wheel_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
