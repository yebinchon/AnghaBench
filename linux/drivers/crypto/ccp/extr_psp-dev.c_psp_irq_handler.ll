; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_device = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@PSP_CMD_COMPLETE = common dso_local global i32 0, align 4
@PSP_CMDRESP_RESP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @psp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.psp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.psp_device*
  store %struct.psp_device* %9, %struct.psp_device** %5, align 8
  %10 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %11 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %14 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %12, %17
  %19 = call i8* @ioread32(i64 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PSP_CMD_COMPLETE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %28 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %31 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %29, %34
  %36 = call i8* @ioread32(i64 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PSP_CMDRESP_RESP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %44 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %46 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %45, i32 0, i32 3
  %47 = call i32 @wake_up(i32* %46)
  br label %48

48:                                               ; preds = %42, %26
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %52 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %55 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = call i32 @iowrite32(i32 %50, i64 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
