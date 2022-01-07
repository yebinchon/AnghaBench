; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_set_func_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_set_func_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_qplib_rcfw = type { i32 }
%struct.bnxt_qplib_ctx = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.cmdq_set_func_resources = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.creq_set_func_resources_resp = type { i32 }

@SET_FUNC_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set function resources\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_set_func_resources(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_rcfw* %1, %struct.bnxt_qplib_ctx* %2) #0 {
  %4 = alloca %struct.bnxt_qplib_res*, align 8
  %5 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %6 = alloca %struct.bnxt_qplib_ctx*, align 8
  %7 = alloca %struct.cmdq_set_func_resources, align 8
  %8 = alloca %struct.creq_set_func_resources_resp, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %4, align 8
  store %struct.bnxt_qplib_rcfw* %1, %struct.bnxt_qplib_rcfw** %5, align 8
  store %struct.bnxt_qplib_ctx* %2, %struct.bnxt_qplib_ctx** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @SET_FUNC_RESOURCES, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @RCFW_CMD_PREP(%struct.cmdq_set_func_resources* byval(%struct.cmdq_set_func_resources) align 8 %7, i32 %11, i32 %12)
  %14 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 8
  store i8* %17, i8** %18, align 8
  %19 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 7
  store i8* %22, i8** %23, align 8
  %24 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 6
  store i8* %27, i8** %28, align 8
  %29 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 5
  store i8* %32, i8** %33, align 8
  %34 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  %46 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = getelementptr inbounds %struct.cmdq_set_func_resources, %struct.cmdq_set_func_resources* %7, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %65 = bitcast %struct.cmdq_set_func_resources* %7 to i8*
  %66 = bitcast %struct.creq_set_func_resources_resp* %8 to i8*
  %67 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %64, i8* %65, i8* %66, i32* null, i32 0)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %3
  %71 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %4, align 8
  %72 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %3
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i32 @RCFW_CMD_PREP(%struct.cmdq_set_func_resources* byval(%struct.cmdq_set_func_resources) align 8, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
