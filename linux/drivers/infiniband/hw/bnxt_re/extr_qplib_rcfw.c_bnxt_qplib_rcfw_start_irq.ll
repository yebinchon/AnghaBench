; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_start_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@bnxt_qplib_service_creq = common dso_local global i32 0, align 4
@bnxt_qplib_creq_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bnxt_qplib_creq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_rcfw_start_irq(%struct.bnxt_qplib_rcfw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %11 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %10, i32 0, i32 6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bnxt_qplib_is_chip_gen_p5(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %31 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %30, i32 0, i32 5
  %32 = load i32, i32* @bnxt_qplib_service_creq, align 4
  %33 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %34 = ptrtoint %struct.bnxt_qplib_rcfw* %33 to i64
  %35 = call i32 @tasklet_init(i32* %31, i32 %32, i64 %34)
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %38 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %37, i32 0, i32 5
  %39 = call i32 @tasklet_enable(i32* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %42 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @bnxt_qplib_creq_irq, align 4
  %45 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %46 = call i32 @request_irq(i32 %43, i32 %44, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.bnxt_qplib_rcfw* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %70

51:                                               ; preds = %40
  %52 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %53 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %55 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %58 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %62 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %66 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @bnxt_qplib_ring_creq_db_rearm(i32 %56, i32 %60, i32 %64, i32 %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %51, %49, %20
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @bnxt_qplib_is_chip_gen_p5(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.bnxt_qplib_rcfw*) #1

declare dso_local i32 @bnxt_qplib_ring_creq_db_rearm(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
