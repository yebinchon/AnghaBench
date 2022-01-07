; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_setup_base_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_setup_base_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32, i32, i64, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@HFI1_CTXT_BASE_FAILED = common dso_local global i32 0, align 4
@HFI1_CTXT_BASE_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, %struct.hfi1_ctxtdata*)* @setup_base_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_base_ctxt(%struct.hfi1_filedata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca %struct.hfi1_filedata*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %3, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %4, align 8
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %8 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %7, i32 0, i32 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  store %struct.hfi1_devdata* %9, %struct.hfi1_devdata** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %11 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hfi1_init_ctxt(i32 %12)
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %16 = call i32 @hfi1_create_rcvhdrq(%struct.hfi1_devdata* %14, %struct.hfi1_ctxtdata* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %22 = call i32 @hfi1_setup_eagerbufs(%struct.hfi1_ctxtdata* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %59

26:                                               ; preds = %20
  %27 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %28 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %33 = call i32 @setup_subctxt(%struct.hfi1_ctxtdata* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %59

38:                                               ; preds = %34
  %39 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %40 = call i32 @hfi1_alloc_ctxt_rcv_groups(%struct.hfi1_ctxtdata* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %46 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %47 = call i32 @init_user_ctxt(%struct.hfi1_filedata* %45, %struct.hfi1_ctxtdata* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %53 = call i32 @user_init(%struct.hfi1_ctxtdata* %52)
  %54 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %55 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %3, align 8
  %56 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %55, i32 0, i32 0
  store %struct.hfi1_ctxtdata* %54, %struct.hfi1_ctxtdata** %56, align 8
  %57 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %58 = call i32 @hfi1_rcd_get(%struct.hfi1_ctxtdata* %57)
  br label %59

59:                                               ; preds = %51, %50, %43, %37, %25, %19
  %60 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %61 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @HFI1_CTXT_BASE_FAILED, align 4
  %69 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %70 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %69, i32 0, i32 1
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* @HFI1_CTXT_BASE_UNINIT, align 4
  %74 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %75 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %74, i32 0, i32 1
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %78 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %77, i32 0, i32 0
  %79 = call i32 @wake_up(i32* %78)
  br label %80

80:                                               ; preds = %72, %59
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @hfi1_init_ctxt(i32) #1

declare dso_local i32 @hfi1_create_rcvhdrq(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_setup_eagerbufs(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @setup_subctxt(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_alloc_ctxt_rcv_groups(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @init_user_ctxt(%struct.hfi1_filedata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @user_init(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcd_get(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
