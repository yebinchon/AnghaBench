; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_mbox.c_cptvf_send_msg_to_pf_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_mbox.c_cptvf_send_msg_to_pf_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cpt_mbox = type { i32 }

@CPT_MBOX_MSG_TIMEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"PF didn't ack to mbox msg %llx from VF%u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_vf*, %struct.cpt_mbox*)* @cptvf_send_msg_to_pf_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cptvf_send_msg_to_pf_timeout(%struct.cpt_vf* %0, %struct.cpt_mbox* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpt_vf*, align 8
  %5 = alloca %struct.cpt_mbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpt_vf* %0, %struct.cpt_vf** %4, align 8
  store %struct.cpt_mbox* %1, %struct.cpt_mbox** %5, align 8
  %8 = load i32, i32* @CPT_MBOX_MSG_TIMEOUT, align 4
  store i32 %8, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %9 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %10 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %12 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %14 = load %struct.cpt_mbox*, %struct.cpt_mbox** %5, align 8
  %15 = call i32 @cptvf_send_msg_to_pf(%struct.cpt_vf* %13, %struct.cpt_mbox* %14)
  br label %16

16:                                               ; preds = %59, %2
  %17 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %18 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %60

22:                                               ; preds = %16
  %23 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %24 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @msleep(i32 %31)
  %33 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %34 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %60

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %38
  %45 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %46 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.cpt_mbox*, %struct.cpt_mbox** %5, align 8
  %50 = getelementptr inbounds %struct.cpt_mbox, %struct.cpt_mbox* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = load %struct.cpt_vf*, %struct.cpt_vf** %4, align 8
  %54 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %38
  br label %16

60:                                               ; preds = %37, %16
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %44, %27
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @cptvf_send_msg_to_pf(%struct.cpt_vf*, %struct.cpt_mbox*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
