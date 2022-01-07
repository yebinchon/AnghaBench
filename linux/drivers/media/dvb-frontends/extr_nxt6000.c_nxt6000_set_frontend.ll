; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt6000.c_nxt6000_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.nxt6000_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.nxt6000_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @nxt6000_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt6000_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.nxt6000_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 2
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.nxt6000_state*, %struct.nxt6000_state** %10, align 8
  store %struct.nxt6000_state* %11, %struct.nxt6000_state** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %15, align 8
  %17 = icmp ne i32 (%struct.dvb_frontend.1*)* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %22, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %25 = bitcast %struct.dvb_frontend* %24 to %struct.dvb_frontend.1*
  %26 = call i32 %23(%struct.dvb_frontend.1* %25)
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %35, align 8
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %38 = bitcast %struct.dvb_frontend* %37 to %struct.dvb_frontend.0*
  %39 = call i32 %36(%struct.dvb_frontend.0* %38, i32 0)
  br label %40

40:                                               ; preds = %32, %18
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.nxt6000_state*, %struct.nxt6000_state** %5, align 8
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nxt6000_set_bandwidth(%struct.nxt6000_state* %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %83

51:                                               ; preds = %41
  %52 = load %struct.nxt6000_state*, %struct.nxt6000_state** %5, align 8
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nxt6000_set_guard_interval(%struct.nxt6000_state* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %83

61:                                               ; preds = %51
  %62 = load %struct.nxt6000_state*, %struct.nxt6000_state** %5, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nxt6000_set_transmission_mode(%struct.nxt6000_state* %62, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %83

71:                                               ; preds = %61
  %72 = load %struct.nxt6000_state*, %struct.nxt6000_state** %5, align 8
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nxt6000_set_inversion(%struct.nxt6000_state* %72, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %83

81:                                               ; preds = %71
  %82 = call i32 @msleep(i32 500)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %79, %69, %59, %49
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @nxt6000_set_bandwidth(%struct.nxt6000_state*, i32) #1

declare dso_local i32 @nxt6000_set_guard_interval(%struct.nxt6000_state*, i32) #1

declare dso_local i32 @nxt6000_set_transmission_mode(%struct.nxt6000_state*, i32) #1

declare dso_local i32 @nxt6000_set_inversion(%struct.nxt6000_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
