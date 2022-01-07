; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx39xxj_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64, %struct.drx_demod_instance* }
%struct.drx_demod_instance = type { i32, %struct.drx_demod_instance*, %struct.drx_demod_instance*, %struct.drx_demod_instance*, %struct.drx_demod_instance* }
%struct.drx39xxj_state = type { i32, %struct.drx39xxj_state*, %struct.drx39xxj_state*, %struct.drx39xxj_state*, %struct.drx39xxj_state* }

@DVB_FE_DEVICE_REMOVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @drx39xxj_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drx39xxj_release(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.drx39xxj_state*, align 8
  %4 = alloca %struct.drx_demod_instance*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %6, align 8
  %8 = bitcast %struct.drx_demod_instance* %7 to %struct.drx39xxj_state*
  store %struct.drx39xxj_state* %8, %struct.drx39xxj_state** %3, align 8
  %9 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %3, align 8
  %10 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %9, i32 0, i32 4
  %11 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %10, align 8
  %12 = bitcast %struct.drx39xxj_state* %11 to %struct.drx_demod_instance*
  store %struct.drx_demod_instance* %12, %struct.drx_demod_instance** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DVB_FE_DEVICE_REMOVED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %20 = call i32 @drxj_close(%struct.drx_demod_instance* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %23 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %22, i32 0, i32 3
  %24 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %23, align 8
  %25 = call i32 @kfree(%struct.drx_demod_instance* %24)
  %26 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %27 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %26, i32 0, i32 2
  %28 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %27, align 8
  %29 = call i32 @kfree(%struct.drx_demod_instance* %28)
  %30 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %31 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %30, i32 0, i32 1
  %32 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %31, align 8
  %33 = call i32 @kfree(%struct.drx_demod_instance* %32)
  %34 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %35 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @release_firmware(i32 %36)
  %38 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %39 = call i32 @kfree(%struct.drx_demod_instance* %38)
  %40 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %3, align 8
  %41 = bitcast %struct.drx39xxj_state* %40 to %struct.drx_demod_instance*
  %42 = call i32 @kfree(%struct.drx_demod_instance* %41)
  ret void
}

declare dso_local i32 @drxj_close(%struct.drx_demod_instance*) #1

declare dso_local i32 @kfree(%struct.drx_demod_instance*) #1

declare dso_local i32 @release_firmware(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
