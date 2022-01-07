; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_irq.c_vbox_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_irq.c_vbox_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@vbox_hotplug_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbox_irq_init(%struct.vbox_private* %0) #0 {
  %2 = alloca %struct.vbox_private*, align 8
  store %struct.vbox_private* %0, %struct.vbox_private** %2, align 8
  %3 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %4 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %3, i32 0, i32 1
  %5 = load i32, i32* @vbox_hotplug_worker, align 4
  %6 = call i32 @INIT_WORK(i32* %4, i32 %5)
  %7 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %8 = call i32 @vbox_update_mode_hints(%struct.vbox_private* %7)
  %9 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %10 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %9, i32 0, i32 0
  %11 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %12 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @drm_irq_install(%struct.TYPE_4__* %10, i32 %16)
  ret i32 %17
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @vbox_update_mode_hints(%struct.vbox_private*) #1

declare dso_local i32 @drm_irq_install(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
