; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_have_hgsmi_mode_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_have_hgsmi_mode_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { i32 }

@VBOX_VBVA_CONF32_MODE_HINT_REPORTING = common dso_local global i32 0, align 4
@VBOX_VBVA_CONF32_GUEST_CURSOR_REPORTING = common dso_local global i32 0, align 4
@VINF_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbox_private*)* @have_hgsmi_mode_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_hgsmi_mode_hints(%struct.vbox_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vbox_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vbox_private* %0, %struct.vbox_private** %3, align 8
  %7 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %8 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VBOX_VBVA_CONF32_MODE_HINT_REPORTING, align 4
  %11 = call i32 @hgsmi_query_conf(i32 %9, i32 %10, i64* %4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %17 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VBOX_VBVA_CONF32_GUEST_CURSOR_REPORTING, align 4
  %20 = call i32 @hgsmi_query_conf(i32 %18, i32 %19, i64* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @VINF_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @VINF_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %23, %14
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @hgsmi_query_conf(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
