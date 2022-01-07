; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_profile_activated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_profile_activated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kovaplus_device = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kovaplus_device*, i64)* @kovaplus_profile_activated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kovaplus_profile_activated(%struct.kovaplus_device* %0, i64 %1) #0 {
  %3 = alloca %struct.kovaplus_device*, align 8
  %4 = alloca i64, align 8
  store %struct.kovaplus_device* %0, %struct.kovaplus_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %7 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i64 @ARRAY_SIZE(%struct.TYPE_2__* %8)
  %10 = icmp uge i64 %5, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %15 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %17 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %24 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %26 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %33 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %35 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kovaplus_device*, %struct.kovaplus_device** %3, align 8
  %42 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
