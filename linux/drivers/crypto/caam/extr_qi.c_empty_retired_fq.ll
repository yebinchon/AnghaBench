; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_empty_retired_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_empty_retired_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qman_fq = type { i32, i32 }
%struct.qman_portal = type { i32 }

@QMAN_VOLATILE_FLAG_WAIT_INT = common dso_local global i32 0, align 4
@QMAN_VOLATILE_FLAG_FINISH = common dso_local global i32 0, align 4
@QM_VDQCR_PRECEDENCE_VDQCR = common dso_local global i32 0, align 4
@QM_VDQCR_NUMFRAMES_TILLEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Volatile dequeue fail for FQ: %u\0A\00", align 1
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.qman_fq*)* @empty_retired_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty_retired_fq(%struct.device* %0, %struct.qman_fq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qman_portal*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  %8 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %9 = load i32, i32* @QMAN_VOLATILE_FLAG_WAIT_INT, align 4
  %10 = load i32, i32* @QMAN_VOLATILE_FLAG_FINISH, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @QM_VDQCR_PRECEDENCE_VDQCR, align 4
  %13 = load i32, i32* @QM_VDQCR_NUMFRAMES_TILLEMPTY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @qman_volatile_dequeue(%struct.qman_fq* %8, i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %21 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %31, %25
  %27 = call i32 (...) @smp_processor_id()
  %28 = call %struct.qman_portal* @qman_get_affine_portal(i32 %27)
  store %struct.qman_portal* %28, %struct.qman_portal** %7, align 8
  %29 = load %struct.qman_portal*, %struct.qman_portal** %7, align 8
  %30 = call i32 @qman_p_poll_dqrr(%struct.qman_portal* %29, i32 16)
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %33 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %26, label %38

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @qman_volatile_dequeue(%struct.qman_fq*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.qman_portal* @qman_get_affine_portal(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @qman_p_poll_dqrr(%struct.qman_portal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
