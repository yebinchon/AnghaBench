; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_init_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@WIIMOTE_EXT_NONE = common dso_local global i32 0, align 4
@WIIMOTE_DEV_UNKNOWN = common dso_local global i32 0, align 4
@WIIPROTO_REQ_SREQ = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_EXT_PLUGGED = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_BUILTIN_MP = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_NO_MP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*)* @wiimote_init_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_init_detect(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %7 = load i32, i32* @WIIMOTE_EXT_NONE, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %9 = call i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data* %8)
  %10 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %11 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load i32, i32* @WIIMOTE_DEV_UNKNOWN, align 4
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %16 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %19 = load i32, i32* @WIIPROTO_REQ_SREQ, align 4
  %20 = call i32 @wiimote_cmd_set(%struct.wiimote_data* %18, i32 %19, i32 0)
  %21 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %22 = call i32 @wiiproto_req_status(%struct.wiimote_data* %21)
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %28 = call i32 @wiimote_cmd_wait_noint(%struct.wiimote_data* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %56

32:                                               ; preds = %1
  %33 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %34 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %38 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %44 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %56

50:                                               ; preds = %32
  %51 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %52 = call i32 @wiimote_cmd_init_ext(%struct.wiimote_data* %51)
  %53 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %55 = call i32 @wiimote_cmd_read_ext(%struct.wiimote_data* %53, i32* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %49, %31
  %57 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %58 = call i32 @wiimote_cmd_release(%struct.wiimote_data* %57)
  %59 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @wiimote_init_set_type(%struct.wiimote_data* %59, i32 %60)
  %62 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %63 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %67 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WIIPROTO_FLAG_BUILTIN_MP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %56
  %74 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %75 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WIIPROTO_FLAG_NO_MP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %73
  %82 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %83 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %82, i32 0, i32 1
  %84 = load i64, i64* @jiffies, align 8
  %85 = load i32, i32* @HZ, align 4
  %86 = mul nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @mod_timer(i32* %83, i64 %88)
  br label %90

90:                                               ; preds = %81, %73, %56
  %91 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %92 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock_irq(i32* %93)
  ret void
}

declare dso_local i32 @wiimote_cmd_acquire_noint(%struct.wiimote_data*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wiimote_cmd_set(%struct.wiimote_data*, i32, i32) #1

declare dso_local i32 @wiiproto_req_status(%struct.wiimote_data*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wiimote_cmd_wait_noint(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_init_ext(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_cmd_read_ext(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @wiimote_cmd_release(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_init_set_type(%struct.wiimote_data*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
