; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_apbps2.c_apbps2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_apbps2.c_apbps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.apbps2_priv* }
%struct.apbps2_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@APBPS2_STATUS_TF = common dso_local global i32 0, align 4
@APBPS2_CTRL_RE = common dso_local global i8 0, align 1
@APBPS2_CTRL_RI = common dso_local global i8 0, align 1
@APBPS2_CTRL_TE = common dso_local global i8 0, align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @apbps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apbps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.apbps2_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 0
  %10 = load %struct.apbps2_priv*, %struct.apbps2_priv** %9, align 8
  store %struct.apbps2_priv* %10, %struct.apbps2_priv** %6, align 8
  store i32 10000, i32* %7, align 4
  br label %11

11:                                               ; preds = %26, %2
  %12 = load %struct.apbps2_priv*, %struct.apbps2_priv** %6, align 8
  %13 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = call i32 @ioread32be(i32* %15)
  %17 = load i32, i32* @APBPS2_STATUS_TF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %21, 0
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i1 [ false, %11 ], [ %23, %20 ]
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call i32 @udelay(i32 10)
  br label %11

28:                                               ; preds = %24
  %29 = load %struct.apbps2_priv*, %struct.apbps2_priv** %6, align 8
  %30 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = call i32 @ioread32be(i32* %32)
  %34 = load i32, i32* @APBPS2_STATUS_TF, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %28
  %38 = load i8, i8* %5, align 1
  %39 = load %struct.apbps2_priv*, %struct.apbps2_priv** %6, align 8
  %40 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @iowrite32be(i8 zeroext %38, i32* %42)
  %44 = load i8, i8* @APBPS2_CTRL_RE, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @APBPS2_CTRL_RI, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %45, %47
  %49 = load i8, i8* @APBPS2_CTRL_TE, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i8
  %53 = load %struct.apbps2_priv*, %struct.apbps2_priv** %6, align 8
  %54 = getelementptr inbounds %struct.apbps2_priv, %struct.apbps2_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @iowrite32be(i8 zeroext %52, i32* %56)
  store i32 0, i32* %3, align 4
  br label %61

58:                                               ; preds = %28
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %37
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iowrite32be(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
