; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_mbox_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_mbox_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"PF interrupt Mbox%d 0x%llx\0A\00", align 1
@CPT_MAX_VF_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Intr from VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpt_mbox_intr_handler(%struct.cpt_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cpt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %8 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @CPTX_PF_MBOX_INTX(i32 0, i32 0)
  %11 = call i64 @cpt_read_csr64(i32 %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %13 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %44, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @CPT_MAX_VF_NUM, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = shl i64 1, %26
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %32 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @cpt_handle_mbox_intr(%struct.cpt_device* %37, i64 %38)
  %40 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @cpt_clear_mbox_intr(%struct.cpt_device* %40, i64 %41)
  br label %43

43:                                               ; preds = %30, %24
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %20

47:                                               ; preds = %20
  ret void
}

declare dso_local i64 @cpt_read_csr64(i32, i32) #1

declare dso_local i32 @CPTX_PF_MBOX_INTX(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i32 @cpt_handle_mbox_intr(%struct.cpt_device*, i64) #1

declare dso_local i32 @cpt_clear_mbox_intr(%struct.cpt_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
