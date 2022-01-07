; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ambakmi.c_amba_kmi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ambakmi.c_amba_kmi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.amba_kmi_port* }
%struct.amba_kmi_port = type { i32 }

@KMISTAT = common dso_local global i32 0, align 4
@KMISTAT_TXEMPTY = common dso_local global i32 0, align 4
@KMIDATA = common dso_local global i32 0, align 4
@SERIO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @amba_kmi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amba_kmi_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.amba_kmi_port*, align 8
  %6 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.serio*, %struct.serio** %3, align 8
  %8 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 0
  %9 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %8, align 8
  store %struct.amba_kmi_port* %9, %struct.amba_kmi_port** %5, align 8
  store i32 10000, i32* %6, align 4
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* @KMISTAT, align 4
  %12 = call i32 @readb(i32 %11)
  %13 = load i32, i32* @KMISTAT_TXEMPTY, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i1 [ false, %10 ], [ %19, %16 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call i32 @udelay(i32 10)
  br label %10

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8, i8* %4, align 1
  %29 = load i32, i32* @KMIDATA, align 4
  %30 = call i32 @writeb(i8 zeroext %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @SERIO_TIMEOUT, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 0, %34 ], [ %36, %35 ]
  ret i32 %38
}

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
