; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_pro_calib_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_pro_calib_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"scan\0A\00", align 1
@WIIPROTO_FLAG_PRO_CALIB_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%hd:%hd %hd:%hd\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wiimod_pro_calib_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_pro_calib_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wiimote_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.wiimote_data* @dev_to_wii(%struct.device* %16)
  store %struct.wiimote_data* %17, %struct.wiimote_data** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %4
  %22 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %23 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load i32, i32* @WIIPROTO_FLAG_PRO_CALIB_DONE, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %29 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %34 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  br label %84

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %12, i8** %13, i8** %14, i8** %15)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 4
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %88

45:                                               ; preds = %37
  %46 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %47 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load i32, i32* @WIIPROTO_FLAG_PRO_CALIB_DONE, align 4
  %51 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %52 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %57 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %62 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  store i8* %60, i8** %65, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %68 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  store i8* %66, i8** %71, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %74 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  store i8* %72, i8** %77, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load %struct.wiimote_data*, %struct.wiimote_data** %10, align 8
  %80 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 3
  store i8* %78, i8** %83, align 8
  br label %84

84:                                               ; preds = %45, %21
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = call i32 @strnlen(i8* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %42
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.wiimote_data* @dev_to_wii(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
