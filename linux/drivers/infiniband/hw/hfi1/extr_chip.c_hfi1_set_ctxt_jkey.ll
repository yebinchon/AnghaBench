; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_set_ctxt_jkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_set_ctxt_jkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ctxtdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_JOB_KEY_MASK_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_JOB_KEY_VALUE_MASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_JOB_KEY_VALUE_SHIFT = common dso_local global i32 0, align 4
@ALLOW_PERM_JKEY = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_JOB_KEY_ALLOW_PERMISSIVE_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_JOB_KEY = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_JOB_KEY_SMASK = common dso_local global i32 0, align 4
@RCV_KEY_CTRL_JOB_KEY_ENABLE_SMASK = common dso_local global i32 0, align 4
@RCV_KEY_CTRL_JOB_KEY_VALUE_MASK = common dso_local global i32 0, align 4
@RCV_KEY_CTRL_JOB_KEY_VALUE_SHIFT = common dso_local global i32 0, align 4
@RCV_KEY_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_set_ctxt_jkey(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %11 = icmp ne %struct.hfi1_ctxtdata* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %14 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %80

20:                                               ; preds = %12
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %22 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @SEND_CTXT_CHECK_JOB_KEY_MASK_SMASK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SEND_CTXT_CHECK_JOB_KEY_VALUE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @SEND_CTXT_CHECK_JOB_KEY_VALUE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %34 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ALLOW_PERM_JKEY, align 4
  %37 = call i64 @HFI1_CAP_KGET_MASK(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = load i32, i32* @SEND_CTXT_CHECK_JOB_KEY_ALLOW_PERMISSIVE_SMASK, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %20
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SEND_CTXT_CHECK_JOB_KEY, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %50 = call i32 @is_ax(%struct.hfi1_devdata* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %43
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SEND_CTXT_CHECK_ENABLE, align 4
  %56 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %53, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_JOB_KEY_SMASK, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SEND_CTXT_CHECK_ENABLE, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %60, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %52, %43
  %66 = load i32, i32* @RCV_KEY_CTRL_JOB_KEY_ENABLE_SMASK, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @RCV_KEY_CTRL_JOB_KEY_VALUE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @RCV_KEY_CTRL_JOB_KEY_VALUE_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %66, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %74 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %75 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @RCV_KEY_CTRL, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %73, i32 %76, i32 %77, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %65, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @read_kctxt_csr(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
