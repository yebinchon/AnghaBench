; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dtv_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dtv_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.dtv_frontend_properties, %struct.dvb_frontend_private* }
%struct.TYPE_2__ = type { i64 (%struct.dvb_frontend.0*, %struct.dvb_frontend_tune_settings*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.dvb_frontend_private = type { i32, i32, i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@dvb_force_auto_inversion = common dso_local global i64 0, align 8
@INVERSION_AUTO = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@dvb_override_tune_delay = common dso_local global i32 0, align 4
@FESTATE_RETUNE = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dtv_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtv_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_private*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.dvb_frontend_tune_settings, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 2
  %10 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %9, align 8
  store %struct.dvb_frontend_private* %10, %struct.dvb_frontend_private** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = call i64 @dvb_frontend_check_parameters(%struct.dvb_frontend* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %184

19:                                               ; preds = %1
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %22 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %22, i32 0, i32 6
  %24 = call i32 @dtv_property_legacy_params_sync(%struct.dvb_frontend* %20, %struct.dtv_frontend_properties* %21, i32* %23)
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %43 [
    i32 139, label %28
    i32 136, label %28
    i32 137, label %31
    i32 135, label %32
    i32 134, label %33
    i32 128, label %33
    i32 130, label %33
    i32 133, label %34
  ]

28:                                               ; preds = %19, %19
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 1
  store i32 6000000, i32* %30, align 4
  br label %44

31:                                               ; preds = %19
  store i32 115, i32* %7, align 4
  br label %44

32:                                               ; preds = %19
  store i32 113, i32* %7, align 4
  br label %44

33:                                               ; preds = %19, %19, %19
  store i32 135, i32* %7, align 4
  br label %44

34:                                               ; preds = %19
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %40 [
    i32 142, label %38
    i32 141, label %39
    i32 140, label %41
  ]

38:                                               ; preds = %34
  store i32 120, i32* %7, align 4
  br label %42

39:                                               ; preds = %34
  store i32 125, i32* %7, align 4
  br label %42

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %34, %40
  store i32 135, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %39, %38
  br label %44

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43, %42, %33, %32, %31, %28
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mult_frac(i32 %50, i32 %51, i32 100)
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i64, i64* @dvb_force_auto_inversion, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @INVERSION_AUTO, align 4
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HIERARCHY_NONE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FEC_NONE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @FEC_AUTO, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %68, %62
  %79 = call i32 @memset(%struct.dvb_frontend_tune_settings* %6, i32 0, i32 12)
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64 (%struct.dvb_frontend.0*, %struct.dvb_frontend_tune_settings*)*, i64 (%struct.dvb_frontend.0*, %struct.dvb_frontend_tune_settings*)** %82, align 8
  %84 = icmp ne i64 (%struct.dvb_frontend.0*, %struct.dvb_frontend_tune_settings*)* %83, null
  br i1 %84, label %85, label %110

85:                                               ; preds = %78
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %87 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64 (%struct.dvb_frontend.0*, %struct.dvb_frontend_tune_settings*)*, i64 (%struct.dvb_frontend.0*, %struct.dvb_frontend_tune_settings*)** %88, align 8
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %91 = bitcast %struct.dvb_frontend* %90 to %struct.dvb_frontend.0*
  %92 = call i64 %89(%struct.dvb_frontend.0* %91, %struct.dvb_frontend_tune_settings* %6)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @HZ, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 1000
  %100 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %101 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %6, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %105 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %6, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %157

110:                                              ; preds = %85, %78
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %147 [
    i32 134, label %114
    i32 133, label %114
    i32 130, label %114
    i32 128, label %114
    i32 137, label %114
    i32 135, label %114
    i32 132, label %131
    i32 131, label %131
    i32 129, label %131
    i32 138, label %131
  ]

114:                                              ; preds = %110, %110, %110, %110, %110, %110
  %115 = load i32, i32* @HZ, align 4
  %116 = sdiv i32 %115, 20
  %117 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %121, 16000
  %123 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %124 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %127, 2000
  %129 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %130 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %156

131:                                              ; preds = %110, %110, %110, %110
  %132 = load i32, i32* @HZ, align 4
  %133 = sdiv i32 %132, 20
  %134 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %135 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %137 = call i32 @dvb_frontend_get_stepsize(%struct.dvb_frontend* %136)
  %138 = mul nsw i32 %137, 2
  %139 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %140 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %142 = call i32 @dvb_frontend_get_stepsize(%struct.dvb_frontend* %141)
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %143, 1
  %145 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %146 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %156

147:                                              ; preds = %110
  %148 = load i32, i32* @HZ, align 4
  %149 = sdiv i32 %148, 20
  %150 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %151 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %153 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  %154 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %155 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %147, %131, %114
  br label %157

157:                                              ; preds = %156, %94
  %158 = load i32, i32* @dvb_override_tune_delay, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i32, i32* @dvb_override_tune_delay, align 4
  %162 = load i32, i32* @HZ, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sdiv i32 %163, 1000
  %165 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %166 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %160, %157
  %168 = load i32, i32* @FESTATE_RETUNE, align 4
  %169 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %170 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @DVBFE_ALGO_SEARCH_AGAIN, align 4
  %172 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %173 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %177 = call i32 @dvb_frontend_clear_events(%struct.dvb_frontend* %176)
  %178 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %179 = call i32 @dvb_frontend_add_event(%struct.dvb_frontend* %178, i32 0)
  %180 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %181 = call i32 @dvb_frontend_wakeup(%struct.dvb_frontend* %180)
  %182 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %183 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %167, %16
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i64 @dvb_frontend_check_parameters(%struct.dvb_frontend*) #1

declare dso_local i32 @dtv_property_legacy_params_sync(%struct.dvb_frontend*, %struct.dtv_frontend_properties*, i32*) #1

declare dso_local i32 @mult_frac(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.dvb_frontend_tune_settings*, i32, i32) #1

declare dso_local i32 @dvb_frontend_get_stepsize(%struct.dvb_frontend*) #1

declare dso_local i32 @dvb_frontend_clear_events(%struct.dvb_frontend*) #1

declare dso_local i32 @dvb_frontend_add_event(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dvb_frontend_wakeup(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
