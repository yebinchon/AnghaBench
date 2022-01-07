; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_nj_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { i64, i32, i32, i64, i64 }

@NJ_CTRL = common dso_local global i64 0, align 8
@NETJET_S_TJ320 = common dso_local global i64 0, align 8
@NJ_ISACIRQ = common dso_local global i32 0, align 4
@NJ_AUXCTRL = common dso_local global i64 0, align 8
@NJ_IRQMASK1 = common dso_local global i64 0, align 8
@NJ_AUXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_hw*)* @nj_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nj_reset(%struct.tiger_hw* %0) #0 {
  %2 = alloca %struct.tiger_hw*, align 8
  store %struct.tiger_hw* %0, %struct.tiger_hw** %2, align 8
  %3 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %4 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NJ_CTRL, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @outb(i32 255, i64 %7)
  %9 = call i32 @mdelay(i32 1)
  %10 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %11 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NETJET_S_TJ320, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %17 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %16, i32 0, i32 1
  store i32 64, i32* %17, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %20 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %23 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %26 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NJ_CTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %24, i64 %29)
  %31 = call i32 @mdelay(i32 10)
  %32 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %33 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %35 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @NJ_ISACIRQ, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %39 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NJ_AUXCTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = load i32, i32* @NJ_ISACIRQ, align 4
  %45 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %46 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NJ_IRQMASK1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  %51 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %52 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tiger_hw*, %struct.tiger_hw** %2, align 8
  %55 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NJ_AUXDATA, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 %53, i64 %58)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
