; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32** }

@GAMMA_TABLE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6e8aa0*)* @s6e8aa0_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6e8aa0_brightness_set(%struct.s6e8aa0* %0) #0 {
  %2 = alloca %struct.s6e8aa0*, align 8
  %3 = alloca i32*, align 8
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %2, align 8
  %4 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %5 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %11 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %16 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32*, i32** %14, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %3, align 8
  %20 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %21 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 142
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %26 = call i32 @s6e8aa0_elvss_nvm_set(%struct.s6e8aa0* %25)
  br label %27

27:                                               ; preds = %24, %9
  %28 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @GAMMA_TABLE_LEN, align 4
  %31 = call i32 @s6e8aa0_dcs_write(%struct.s6e8aa0* %28, i32* %29, i32 %30)
  %32 = load %struct.s6e8aa0*, %struct.s6e8aa0** %2, align 8
  %33 = call i32 @s6e8aa0_dcs_write_seq_static(%struct.s6e8aa0* %32, i32 247, i32 3)
  br label %34

34:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @s6e8aa0_elvss_nvm_set(%struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_dcs_write(%struct.s6e8aa0*, i32*, i32) #1

declare dso_local i32 @s6e8aa0_dcs_write_seq_static(%struct.s6e8aa0*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
