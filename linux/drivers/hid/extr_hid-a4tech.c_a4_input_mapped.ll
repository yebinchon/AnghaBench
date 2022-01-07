; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_input_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_input_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i64, i64, i32 }
%struct.a4tech_sc = type { i32 }

@EV_REL = common dso_local global i64 0, align 8
@REL_WHEEL_HI_RES = common dso_local global i64 0, align 8
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL_HI_RES = common dso_local global i32 0, align 4
@A4_2WHEEL_MOUSE_HACK_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @a4_input_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4_input_mapped(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.a4tech_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.a4tech_sc* %16, %struct.a4tech_sc** %14, align 8
  %17 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EV_REL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %6
  %23 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REL_WHEEL_HI_RES, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* @REL_HWHEEL, align 4
  %30 = load i64**, i64*** %12, align 8
  %31 = load i64*, i64** %30, align 8
  %32 = call i32 @set_bit(i32 %29, i64* %31)
  %33 = load i32, i32* @REL_HWHEEL_HI_RES, align 4
  %34 = load i64**, i64*** %12, align 8
  %35 = load i64*, i64** %34, align 8
  %36 = call i32 @set_bit(i32 %33, i64* %35)
  br label %37

37:                                               ; preds = %28, %22, %6
  %38 = load %struct.a4tech_sc*, %struct.a4tech_sc** %14, align 8
  %39 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @A4_2WHEEL_MOUSE_HACK_7, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %46 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 589831
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %51

50:                                               ; preds = %44, %37
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
