; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_stop_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_hfcsusb_stop_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfcsusb = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HFC_CHAN_D = common dso_local global i32 0, align 4
@HFCUSB_D_RX = common dso_local global i64 0, align 8
@HFC_CHAN_B1 = common dso_local global i32 0, align 4
@HFCUSB_B1_RX = common dso_local global i64 0, align 8
@HFC_CHAN_B2 = common dso_local global i32 0, align 4
@HFCUSB_B2_RX = common dso_local global i64 0, align 8
@HFC_CHAN_E = common dso_local global i32 0, align 4
@HFCUSB_PCM_RX = common dso_local global i64 0, align 8
@CNF_3INT3ISO = common dso_local global i64 0, align 8
@CNF_4INT3ISO = common dso_local global i64 0, align 8
@CNF_3ISO3ISO = common dso_local global i64 0, align 8
@CNF_4ISO3ISO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfcsusb*, i32)* @hfcsusb_stop_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcsusb_stop_endpoint(%struct.hfcsusb* %0, i32 %1) #0 {
  %3 = alloca %struct.hfcsusb*, align 8
  %4 = alloca i32, align 4
  store %struct.hfcsusb* %0, %struct.hfcsusb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HFC_CHAN_D, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %10 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i64, i64* @HFCUSB_D_RX, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  br label %117

18:                                               ; preds = %8, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HFC_CHAN_B1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %24 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* @HFCUSB_B1_RX, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %117

32:                                               ; preds = %22, %18
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HFC_CHAN_B2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %38 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* @HFCUSB_B2_RX, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %117

46:                                               ; preds = %36, %32
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HFC_CHAN_E, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %52 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* @HFCUSB_PCM_RX, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %117

60:                                               ; preds = %50, %46
  %61 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %62 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CNF_3INT3ISO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %68 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CNF_4INT3ISO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66, %60
  %73 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %74 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 1
  %81 = call i32 @stop_int_gracefull(%struct.TYPE_3__* %80)
  br label %82

82:                                               ; preds = %72, %66
  %83 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %84 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CNF_3ISO3ISO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %90 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CNF_4ISO3ISO, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %88, %82
  %95 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %96 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = mul nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 1
  %103 = call i32 @stop_iso_gracefull(%struct.TYPE_3__* %102)
  br label %104

104:                                              ; preds = %94, %88
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @HFC_CHAN_E, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.hfcsusb*, %struct.hfcsusb** %3, align 8
  %110 = getelementptr inbounds %struct.hfcsusb, %struct.hfcsusb* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = mul nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %114
  %116 = call i32 @stop_iso_gracefull(%struct.TYPE_3__* %115)
  br label %117

117:                                              ; preds = %17, %31, %45, %59, %108, %104
  ret void
}

declare dso_local i32 @stop_int_gracefull(%struct.TYPE_3__*) #1

declare dso_local i32 @stop_iso_gracefull(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
