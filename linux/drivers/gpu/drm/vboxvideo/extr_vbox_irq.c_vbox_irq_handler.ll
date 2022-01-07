; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_irq.c_vbox_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_irq.c_vbox_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.vbox_private = type { i32 }

@HGSMIHOSTFLAGS_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@HGSMIHOSTFLAGS_HOTPLUG = common dso_local global i32 0, align 4
@HGSMIHOSTFLAGS_CURSOR_CAPABILITIES = common dso_local global i32 0, align 4
@HGSMIHOSTFLAGS_VSYNC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbox_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.vbox_private*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.drm_device*
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vbox_private*
  store %struct.vbox_private* %14, %struct.vbox_private** %7, align 8
  %15 = load %struct.vbox_private*, %struct.vbox_private** %7, align 8
  %16 = call i32 @vbox_get_flags(%struct.vbox_private* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @HGSMIHOSTFLAGS_IRQ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @HGSMIHOSTFLAGS_HOTPLUG, align 4
  %26 = load i32, i32* @HGSMIHOSTFLAGS_CURSOR_CAPABILITIES, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @HGSMIHOSTFLAGS_VSYNC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.vbox_private*, %struct.vbox_private** %7, align 8
  %37 = call i32 @vbox_report_hotplug(%struct.vbox_private* %36)
  br label %38

38:                                               ; preds = %35, %30, %23
  %39 = call i32 (...) @vbox_clear_irq()
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @vbox_get_flags(%struct.vbox_private*) #1

declare dso_local i32 @vbox_report_hotplug(%struct.vbox_private*) #1

declare dso_local i32 @vbox_clear_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
