; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_tx_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_tx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.sms_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_client_t*, %struct.sms_tx_stats*)* @smsdvb_update_tx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_update_tx_params(%struct.smsdvb_client_t* %0, %struct.sms_tx_stats* %1) #0 {
  %3 = alloca %struct.smsdvb_client_t*, align 8
  %4 = alloca %struct.sms_tx_stats*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  store %struct.sms_tx_stats* %1, %struct.sms_tx_stats** %4, align 8
  %7 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %8 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %7, i32 0, i32 1
  store %struct.dvb_frontend* %8, %struct.dvb_frontend** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %6, align 8
  %11 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %12 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %17 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sms_to_status(i32 %18, i32 0)
  %20 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %21 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %23 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sms_to_bw(i32 %24)
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %29 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sms_to_mode(i32 %30)
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %35 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sms_to_guard_interval(i32 %36)
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %41 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @sms_to_code_rate(i32 %42)
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %47 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @sms_to_code_rate(i32 %48)
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %53 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sms_to_hierarchy(i32 %54)
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sms_tx_stats*, %struct.sms_tx_stats** %4, align 8
  %59 = getelementptr inbounds %struct.sms_tx_stats, %struct.sms_tx_stats* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sms_to_modulation(i32 %60)
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  ret void
}

declare dso_local i32 @sms_to_status(i32, i32) #1

declare dso_local i32 @sms_to_bw(i32) #1

declare dso_local i32 @sms_to_mode(i32) #1

declare dso_local i32 @sms_to_guard_interval(i32) #1

declare dso_local i8* @sms_to_code_rate(i32) #1

declare dso_local i32 @sms_to_hierarchy(i32) #1

declare dso_local i32 @sms_to_modulation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
