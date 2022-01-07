; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@WIIPROTO_FLAG_EXT_PLUGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"EXT hotplug: 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"EXT hotplug: 0\0A\00", align 1
@WIIPROTO_FLAG_MP_PLUGGED = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_EXT_ACTIVE = common dso_local global i32 0, align 4
@WIIPROTO_FLAG_MP_ACTIVE = common dso_local global i32 0, align 4
@WIIPROTO_REQ_SREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @handler_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler_status(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @handler_status_K(%struct.wiimote_data* %5, i32* %6)
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %15 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %13
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hid_dbg(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %27 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %28 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %33 = call i32 @__wiimote_schedule(%struct.wiimote_data* %32)
  br label %34

34:                                               ; preds = %21, %13
  br label %79

35:                                               ; preds = %2
  %36 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %37 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %35
  %44 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %45 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hid_dbg(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @WIIPROTO_FLAG_EXT_PLUGGED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %51 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @WIIPROTO_FLAG_MP_PLUGGED, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %58 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @WIIPROTO_FLAG_EXT_ACTIVE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %65 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @WIIPROTO_FLAG_MP_ACTIVE, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %72 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 4
  %76 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %77 = call i32 @__wiimote_schedule(%struct.wiimote_data* %76)
  br label %78

78:                                               ; preds = %43, %35
  br label %79

79:                                               ; preds = %78, %34
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %84 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %87 = load i32, i32* @WIIPROTO_REQ_SREQ, align 4
  %88 = call i64 @wiimote_cmd_pending(%struct.wiimote_data* %86, i32 %87, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %92 = call i32 @wiimote_cmd_complete(%struct.wiimote_data* %91)
  br label %93

93:                                               ; preds = %90, %79
  ret void
}

declare dso_local i32 @handler_status_K(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @hid_dbg(i32, i8*) #1

declare dso_local i32 @__wiimote_schedule(%struct.wiimote_data*) #1

declare dso_local i64 @wiimote_cmd_pending(%struct.wiimote_data*, i32, i32) #1

declare dso_local i32 @wiimote_cmd_complete(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
