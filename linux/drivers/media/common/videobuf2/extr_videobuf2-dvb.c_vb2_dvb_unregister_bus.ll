; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dvb.c_vb2_dvb_unregister_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dvb.c_vb2_dvb_unregister_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dvb_frontends = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vb2_dvb_unregister_bus(%struct.vb2_dvb_frontends* %0) #0 {
  %2 = alloca %struct.vb2_dvb_frontends*, align 8
  store %struct.vb2_dvb_frontends* %0, %struct.vb2_dvb_frontends** %2, align 8
  %3 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %2, align 8
  %4 = call i32 @vb2_dvb_dealloc_frontends(%struct.vb2_dvb_frontends* %3)
  %5 = load %struct.vb2_dvb_frontends*, %struct.vb2_dvb_frontends** %2, align 8
  %6 = getelementptr inbounds %struct.vb2_dvb_frontends, %struct.vb2_dvb_frontends* %5, i32 0, i32 0
  %7 = call i32 @dvb_unregister_adapter(i32* %6)
  ret void
}

declare dso_local i32 @vb2_dvb_dealloc_frontends(%struct.vb2_dvb_frontends*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
