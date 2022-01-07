; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_ph_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_ph_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfcsusb = type { %struct.TYPE_11__*, i32, %struct.dchannel }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.dchannel = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ph_info = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@bch = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MPH_INFORMATION_IND = common dso_local global i32 0, align 4
@MISDN_ID_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfcsusb*)* @hfcsusb_ph_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcsusb_ph_info(%struct.hfcsusb* %0) #0 {
  %2 = alloca %struct.hfcsusb*, align 8
  %3 = alloca %struct.ph_info*, align 8
  %4 = alloca %struct.dchannel*, align 8
  %5 = alloca i32, align 4
  store %struct.hfcsusb* %0, %struct.hfcsusb** %2, align 8
  %6 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %7 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %6, i32 0, i32 2
  store %struct.dchannel* %7, %struct.dchannel** %4, align 8
  %8 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %9 = load i32, i32* @bch, align 4
  %10 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %11 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @struct_size(%struct.ph_info* %8, i32 %9, i32 %13)
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.ph_info* @kzalloc(i32 %14, i32 %15)
  store %struct.ph_info* %16, %struct.ph_info** %3, align 8
  %17 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %18 = icmp ne %struct.ph_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %109

20:                                               ; preds = %1
  %21 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %22 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %25 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %29 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %32 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %36 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %39 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %42 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %46 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %87, %20
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %51 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %48
  %56 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %57 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %66 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 4
  %72 = load %struct.hfcsusb*, %struct.hfcsusb** %2, align 8
  %73 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %81 = getelementptr inbounds %struct.ph_info, %struct.ph_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 4
  br label %87

87:                                               ; preds = %55
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %48

90:                                               ; preds = %48
  %91 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %92 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* @MPH_INFORMATION_IND, align 4
  %95 = load i32, i32* @MISDN_ID_ANY, align 4
  %96 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %97 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = add i64 4, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %105 = load i32, i32* @GFP_ATOMIC, align 4
  %106 = call i32 @_queue_data(i32* %93, i32 %94, i32 %95, i32 %103, %struct.ph_info* %104, i32 %105)
  %107 = load %struct.ph_info*, %struct.ph_info** %3, align 8
  %108 = call i32 @kfree(%struct.ph_info* %107)
  br label %109

109:                                              ; preds = %90, %19
  ret void
}

declare dso_local %struct.ph_info* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ph_info*, i32, i32) #1

declare dso_local i32 @_queue_data(i32*, i32, i32, i32, %struct.ph_info*, i32) #1

declare dso_local i32 @kfree(%struct.ph_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
