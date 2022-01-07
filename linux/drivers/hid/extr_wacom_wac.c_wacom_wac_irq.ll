; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i64, i64, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WACOM_PKGLEN_BBTOUCH3 = common dso_local global i64 0, align 8
@WACOM_REPORT_USB = common dso_local global i32 0, align 4
@WACOM_REPORT_DEVICE_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wacom_wac_irq(%struct.wacom_wac* %0, i64 %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %7 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %112 [
    i32 145, label %10
    i32 144, label %13
    i32 130, label %16
    i32 169, label %16
    i32 168, label %16
    i32 129, label %16
    i32 143, label %19
    i32 172, label %22
    i32 171, label %25
    i32 170, label %25
    i32 167, label %28
    i32 164, label %28
    i32 166, label %28
    i32 165, label %28
    i32 161, label %28
    i32 163, label %28
    i32 162, label %28
    i32 176, label %28
    i32 131, label %28
    i32 138, label %28
    i32 137, label %28
    i32 136, label %28
    i32 135, label %28
    i32 133, label %28
    i32 173, label %28
    i32 174, label %28
    i32 175, label %28
    i32 160, label %31
    i32 134, label %35
    i32 132, label %35
    i32 157, label %38
    i32 159, label %38
    i32 158, label %38
    i32 149, label %38
    i32 150, label %38
    i32 151, label %38
    i32 152, label %62
    i32 153, label %62
    i32 154, label %62
    i32 141, label %66
    i32 139, label %66
    i32 140, label %66
    i32 148, label %66
    i32 147, label %66
    i32 146, label %66
    i32 178, label %70
    i32 179, label %70
    i32 177, label %70
    i32 156, label %70
    i32 155, label %70
    i32 180, label %87
    i32 128, label %91
    i32 142, label %95
  ]

10:                                               ; preds = %2
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %12 = call i32 @wacom_penpartner_irq(%struct.wacom_wac* %11)
  store i32 %12, i32* %5, align 4
  br label %113

13:                                               ; preds = %2
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %15 = call i32 @wacom_pl_irq(%struct.wacom_wac* %14)
  store i32 %15, i32* %5, align 4
  br label %113

16:                                               ; preds = %2, %2, %2, %2
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %18 = call i32 @wacom_graphire_irq(%struct.wacom_wac* %17)
  store i32 %18, i32* %5, align 4
  br label %113

19:                                               ; preds = %2
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %21 = call i32 @wacom_ptu_irq(%struct.wacom_wac* %20)
  store i32 %21, i32* %5, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %24 = call i32 @wacom_dtu_irq(%struct.wacom_wac* %23)
  store i32 %24, i32* %5, align 4
  br label %113

25:                                               ; preds = %2, %2
  %26 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %27 = call i32 @wacom_dtus_irq(%struct.wacom_wac* %26)
  store i32 %27, i32* %5, align 4
  br label %113

28:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %29 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %30 = call i32 @wacom_intuos_irq(%struct.wacom_wac* %29)
  store i32 %30, i32* %5, align 4
  br label %113

31:                                               ; preds = %2
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @wacom_intuos_bt_irq(%struct.wacom_wac* %32, i64 %33)
  store i32 %34, i32* %5, align 4
  br label %113

35:                                               ; preds = %2, %2
  %36 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %37 = call i32 @wacom_24hdt_irq(%struct.wacom_wac* %36)
  store i32 %37, i32* %5, align 4
  br label %113

38:                                               ; preds = %2, %2, %2, %2, %2, %2
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @WACOM_PKGLEN_BBTOUCH3, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %44 = call i32 @wacom_bpt3_touch(%struct.wacom_wac* %43)
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %38
  %46 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %47 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WACOM_REPORT_USB, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @wacom_status_irq(%struct.wacom_wac* %54, i64 %55)
  store i32 %56, i32* %5, align 4
  br label %60

57:                                               ; preds = %45
  %58 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %59 = call i32 @wacom_intuos_irq(%struct.wacom_wac* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %42
  br label %113

62:                                               ; preds = %2, %2, %2
  %63 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @wacom_intuos_pro2_bt_irq(%struct.wacom_wac* %63, i64 %64)
  store i32 %65, i32* %5, align 4
  br label %113

66:                                               ; preds = %2, %2, %2, %2, %2, %2
  %67 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @wacom_tpc_irq(%struct.wacom_wac* %67, i64 %68)
  store i32 %69, i32* %5, align 4
  br label %113

70:                                               ; preds = %2, %2, %2, %2, %2
  %71 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %72 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @WACOM_REPORT_USB, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @wacom_status_irq(%struct.wacom_wac* %79, i64 %80)
  store i32 %81, i32* %5, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @wacom_bpt_irq(%struct.wacom_wac* %83, i64 %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %113

87:                                               ; preds = %2
  %88 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @wacom_bamboo_pad_irq(%struct.wacom_wac* %88, i64 %89)
  store i32 %90, i32* %5, align 4
  br label %113

91:                                               ; preds = %2
  %92 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @wacom_wireless_irq(%struct.wacom_wac* %92, i64 %93)
  store i32 %94, i32* %5, align 4
  br label %113

95:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %96 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %97 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WACOM_REPORT_DEVICE_LIST, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @wacom_remote_status_irq(%struct.wacom_wac* %104, i64 %105)
  br label %111

107:                                              ; preds = %95
  %108 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @wacom_remote_irq(%struct.wacom_wac* %108, i64 %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %103
  br label %113

112:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %111, %91, %87, %86, %66, %62, %61, %35, %31, %28, %25, %22, %19, %16, %13, %10
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %113
  %117 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %118 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %123 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @input_sync(i64 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %128 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %133 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @input_sync(i64 %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %138 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %143 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @input_sync(i64 %144)
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %113
  ret void
}

declare dso_local i32 @wacom_penpartner_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_pl_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_graphire_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_ptu_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_dtu_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_dtus_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_intuos_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_intuos_bt_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_24hdt_irq(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_bpt3_touch(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_status_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_intuos_pro2_bt_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_tpc_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_bpt_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_bamboo_pad_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_wireless_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_remote_status_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @wacom_remote_irq(%struct.wacom_wac*, i64) #1

declare dso_local i32 @input_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
