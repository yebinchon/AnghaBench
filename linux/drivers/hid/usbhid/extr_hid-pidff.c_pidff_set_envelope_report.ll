; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_envelope_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_envelope_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8**, i32 }
%struct.TYPE_3__ = type { i8** }
%struct.ff_envelope = type { i32, i32, i8*, i8* }

@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@PID_ATTACK_LEVEL = common dso_local global i64 0, align 8
@PID_FADE_LEVEL = common dso_local global i64 0, align 8
@PID_ATTACK_TIME = common dso_local global i64 0, align 8
@PID_FADE_TIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"attack %u => %d\0A\00", align 1
@PID_SET_ENVELOPE = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_device*, %struct.ff_envelope*)* @pidff_set_envelope_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_set_envelope_report(%struct.pidff_device* %0, %struct.ff_envelope* %1) #0 {
  %3 = alloca %struct.pidff_device*, align 8
  %4 = alloca %struct.ff_envelope*, align 8
  store %struct.pidff_device* %0, %struct.pidff_device** %3, align 8
  store %struct.ff_envelope* %1, %struct.ff_envelope** %4, align 8
  %5 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %6 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %15 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %13, i8** %21, align 8
  %22 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %23 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 32767
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %29 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi i32 [ 32767, %26 ], [ %30, %27 ]
  %33 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %34 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* @PID_ATTACK_LEVEL, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @pidff_rescale(i32 %32, i32 32767, i32 %39)
  %41 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %42 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* @PID_ATTACK_LEVEL, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %40, i8** %48, align 8
  %49 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %50 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 32767
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %58

54:                                               ; preds = %31
  %55 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %56 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %53
  %59 = phi i32 [ 32767, %53 ], [ %57, %54 ]
  %60 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %61 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* @PID_FADE_LEVEL, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @pidff_rescale(i32 %59, i32 32767, i32 %66)
  %68 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %69 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* @PID_FADE_LEVEL, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  store i8* %67, i8** %75, align 8
  %76 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %77 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %80 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* @PID_ATTACK_TIME, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  store i8* %78, i8** %86, align 8
  %87 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %88 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %91 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* @PID_FADE_TIME, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  store i8* %89, i8** %97, align 8
  %98 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %99 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ff_envelope*, %struct.ff_envelope** %4, align 8
  %102 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %105 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i64, i64* @PID_ATTACK_LEVEL, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @hid_dbg(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %103, i8* %112)
  %114 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %115 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %118 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @PID_SET_ENVELOPE, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %124 = call i32 @hid_hw_request(i32 %116, i32 %122, i32 %123)
  ret void
}

declare dso_local i8* @pidff_rescale(i32, i32, i32) #1

declare dso_local i32 @hid_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @hid_hw_request(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
