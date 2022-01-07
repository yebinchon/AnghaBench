; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_modules_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_modules_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* }
%struct.wiimote_data = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@wiimote_devtype_mods = common dso_local global i64** null, align 8
@WIIMOTE_DEV_UNKNOWN = common dso_local global i64 0, align 8
@WIIMOD_NULL = common dso_local global i64 0, align 8
@wiimod_table = common dso_local global %struct.wiimod_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*)* @wiimote_modules_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_modules_unload(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.wiimod_ops*, align 8
  %6 = alloca i64, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %7 = load i64**, i64*** @wiimote_devtype_mods, align 8
  %8 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %9 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64*, i64** %7, i64 %11
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %3, align 8
  %14 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %15 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i64, i64* @WIIMOTE_DEV_UNKNOWN, align 8
  %20 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %21 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i64*, i64** %3, align 8
  store i64* %28, i64** %4, align 8
  br label %29

29:                                               ; preds = %35, %1
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WIIMOD_NULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %4, align 8
  br label %29

38:                                               ; preds = %29
  %39 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %40 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %45 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @input_get_device(i32* %46)
  %48 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %49 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @input_unregister_device(i32* %50)
  br label %52

52:                                               ; preds = %43, %38
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 -1
  store i64* %55, i64** %4, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = icmp ne i64* %54, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_table, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %59, i64 %61
  %63 = load %struct.wiimod_ops*, %struct.wiimod_ops** %62, align 8
  store %struct.wiimod_ops* %63, %struct.wiimod_ops** %5, align 8
  %64 = load %struct.wiimod_ops*, %struct.wiimod_ops** %5, align 8
  %65 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %65, align 8
  %67 = icmp ne i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load %struct.wiimod_ops*, %struct.wiimod_ops** %5, align 8
  %70 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %69, i32 0, i32 0
  %71 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %70, align 8
  %72 = load %struct.wiimod_ops*, %struct.wiimod_ops** %5, align 8
  %73 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %74 = call i32 %71(%struct.wiimod_ops* %72, %struct.wiimote_data* %73)
  br label %75

75:                                               ; preds = %68, %58
  br label %53

76:                                               ; preds = %53
  %77 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %78 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %83 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @input_put_device(i32* %84)
  %86 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %87 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %81, %76
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @input_get_device(i32*) #1

declare dso_local i32 @input_unregister_device(i32*) #1

declare dso_local i32 @input_put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
