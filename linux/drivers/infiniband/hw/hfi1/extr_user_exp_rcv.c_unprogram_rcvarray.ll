; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_unprogram_rcvarray.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_unprogram_rcvarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32, %struct.tid_rb_node**, %struct.hfi1_ctxtdata* }
%struct.tid_rb_node = type { i64, i32, %struct.tid_group* }
%struct.tid_group = type { i32 }
%struct.hfi1_ctxtdata = type { i64, i64, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid RcvArray entry (%u) index for ctxt %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*, i64, %struct.tid_group**)* @unprogram_rcvarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unprogram_rcvarray(%struct.hfi1_filedata* %0, i64 %1, %struct.tid_group** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_filedata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tid_group**, align 8
  %8 = alloca %struct.hfi1_ctxtdata*, align 8
  %9 = alloca %struct.hfi1_devdata*, align 8
  %10 = alloca %struct.tid_rb_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tid_group** %2, %struct.tid_group*** %7, align 8
  %14 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %15 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %14, i32 0, i32 2
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %15, align 8
  store %struct.hfi1_ctxtdata* %16, %struct.hfi1_ctxtdata** %8, align 8
  %17 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %8, align 8
  %18 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %17, i32 0, i32 3
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %18, align 8
  store %struct.hfi1_devdata* %19, %struct.hfi1_devdata** %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @CTRL, align 4
  %22 = call i32 @EXP_TID_GET(i64 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @IDX, align 4
  %25 = call i32 @EXP_TID_GET(i64 %23, i32 %24)
  %26 = shl i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %8, align 8
  %30 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %8, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dd_dev_err(%struct.hfi1_devdata* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %100

42:                                               ; preds = %3
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %100

48:                                               ; preds = %42
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %13, align 8
  %54 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %55 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %54, i32 0, i32 1
  %56 = load %struct.tid_rb_node**, %struct.tid_rb_node*** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds %struct.tid_rb_node*, %struct.tid_rb_node** %56, i64 %57
  %59 = load %struct.tid_rb_node*, %struct.tid_rb_node** %58, align 8
  store %struct.tid_rb_node* %59, %struct.tid_rb_node** %10, align 8
  %60 = load %struct.tid_rb_node*, %struct.tid_rb_node** %10, align 8
  %61 = icmp ne %struct.tid_rb_node* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %48
  %63 = load %struct.tid_rb_node*, %struct.tid_rb_node** %10, align 8
  %64 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %8, align 8
  %67 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add nsw i64 %68, %69
  %71 = icmp ne i64 %65, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62, %48
  %73 = load i32, i32* @EBADF, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %100

75:                                               ; preds = %62
  %76 = load %struct.tid_group**, %struct.tid_group*** %7, align 8
  %77 = icmp ne %struct.tid_group** %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.tid_rb_node*, %struct.tid_rb_node** %10, align 8
  %80 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %79, i32 0, i32 2
  %81 = load %struct.tid_group*, %struct.tid_group** %80, align 8
  %82 = load %struct.tid_group**, %struct.tid_group*** %7, align 8
  store %struct.tid_group* %81, %struct.tid_group** %82, align 8
  br label %83

83:                                               ; preds = %78, %75
  %84 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %85 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %90 = load %struct.tid_rb_node*, %struct.tid_rb_node** %10, align 8
  %91 = call i32 @cacheless_tid_rb_remove(%struct.hfi1_filedata* %89, %struct.tid_rb_node* %90)
  br label %99

92:                                               ; preds = %83
  %93 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %94 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.tid_rb_node*, %struct.tid_rb_node** %10, align 8
  %97 = getelementptr inbounds %struct.tid_rb_node, %struct.tid_rb_node* %96, i32 0, i32 1
  %98 = call i32 @hfi1_mmu_rb_remove(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %92, %88
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %72, %45, %33
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @EXP_TID_GET(i64, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i64, i32) #1

declare dso_local i32 @cacheless_tid_rb_remove(%struct.hfi1_filedata*, %struct.tid_rb_node*) #1

declare dso_local i32 @hfi1_mmu_rb_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
