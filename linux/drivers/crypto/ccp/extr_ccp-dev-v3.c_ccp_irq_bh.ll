; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_irq_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_irq_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i64, %struct.ccp_cmd_queue* }
%struct.ccp_cmd_queue = type { i32, i32, i32, i32, i32, i8*, i64, i64, i8*, i64 }

@IRQ_STATUS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ccp_irq_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_irq_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ccp_device*, align 8
  %4 = alloca %struct.ccp_cmd_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.ccp_device*
  store %struct.ccp_device* %9, %struct.ccp_device** %3, align 8
  %10 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %11 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IRQ_STATUS_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @ioread32(i64 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %89, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %20 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %17
  %24 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %24, i32 0, i32 2
  %26 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %26, i64 %28
  store %struct.ccp_cmd_queue* %29, %struct.ccp_cmd_queue** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %32 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %35 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = and i32 %30, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %23
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %44 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %46 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @ioread32(i64 %47)
  %49 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %50 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %52 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @ioread32(i64 %53)
  %55 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %56 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %59 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %41
  %64 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %65 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %70 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %69, i32 0, i32 5
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @CMD_Q_ERROR(i8* %71)
  %73 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %74 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %73, i32 0, i32 6
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %63, %41
  %76 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %77 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %80 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IRQ_STATUS_REG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @iowrite32(i32 %78, i64 %83)
  %85 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %86 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %85, i32 0, i32 4
  %87 = call i32 @wake_up_interruptible(i32* %86)
  br label %88

88:                                               ; preds = %75, %23
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %17

92:                                               ; preds = %17
  %93 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %94 = call i32 @ccp_enable_queue_interrupts(%struct.ccp_device* %93)
  ret void
}

declare dso_local i8* @ioread32(i64) #1

declare dso_local i64 @CMD_Q_ERROR(i8*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ccp_enable_queue_interrupts(%struct.ccp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
