; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@CPT_TIMER_THOLD = common dso_local global i32 0, align 4
@CPT_FLAG_DEVICE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*)* @cptvf_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cptvf_device_init(%struct.cpt_vf* %0) #0 {
  %2 = alloca %struct.cpt_vf*, align 8
  %3 = alloca i64, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %5 = call i32 @cptvf_write_vq_ctl(%struct.cpt_vf* %4, i32 0)
  %6 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %7 = call i32 @cptvf_write_vq_doorbell(%struct.cpt_vf* %6, i32 0)
  %8 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %9 = call i32 @cptvf_write_vq_inprog(%struct.cpt_vf* %8, i32 0)
  %10 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %11 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @cptvf_write_vq_saddr(%struct.cpt_vf* %19, i64 %20)
  %22 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %23 = load i32, i32* @CPT_TIMER_THOLD, align 4
  %24 = call i32 @cptvf_write_vq_done_timewait(%struct.cpt_vf* %22, i32 %23)
  %25 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %26 = call i32 @cptvf_write_vq_done_numwait(%struct.cpt_vf* %25, i32 1)
  %27 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %28 = call i32 @cptvf_write_vq_ctl(%struct.cpt_vf* %27, i32 1)
  %29 = load i32, i32* @CPT_FLAG_DEVICE_READY, align 4
  %30 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %31 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  ret void
}

declare dso_local i32 @cptvf_write_vq_ctl(%struct.cpt_vf*, i32) #1

declare dso_local i32 @cptvf_write_vq_doorbell(%struct.cpt_vf*, i32) #1

declare dso_local i32 @cptvf_write_vq_inprog(%struct.cpt_vf*, i32) #1

declare dso_local i32 @cptvf_write_vq_saddr(%struct.cpt_vf*, i64) #1

declare dso_local i32 @cptvf_write_vq_done_timewait(%struct.cpt_vf*, i32) #1

declare dso_local i32 @cptvf_write_vq_done_numwait(%struct.cpt_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
