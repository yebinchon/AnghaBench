; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_del_uof_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_del_uof_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_uclo_objhandle*, %struct.TYPE_4__*, i64 }
%struct.icp_qat_uclo_objhandle = type { i32, %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle*, i32*, %struct.TYPE_3__*, %struct.icp_qat_uclo_objhandle* }
%struct.TYPE_3__ = type { %struct.icp_qat_uclo_objhandle* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qat_uclo_del_uof_obj(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %3 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %4 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %2, align 8
  %5 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %6 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %5, i32 0, i32 0
  %7 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  store %struct.icp_qat_uclo_objhandle* %7, %struct.icp_qat_uclo_objhandle** %3, align 8
  %8 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %9 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %14 = call i32 @qat_uclo_del_suof(%struct.icp_qat_fw_loader_handle* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %17 = icmp ne %struct.icp_qat_uclo_objhandle* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %76

19:                                               ; preds = %15
  %20 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %21 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %20, i32 0, i32 5
  %22 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %21, align 8
  %23 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %40, %19
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %27 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %32 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %37, align 8
  %39 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %24

43:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %47 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %45, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %54 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @qat_uclo_free_ae_data(i32* %58)
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %44

63:                                               ; preds = %44
  %64 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %65 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %64, i32 0, i32 2
  %66 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %65, align 8
  %67 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %66)
  %68 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %69 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %68, i32 0, i32 1
  %70 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %69, align 8
  %71 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %70)
  %72 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %3, align 8
  %73 = call i32 @kfree(%struct.icp_qat_uclo_objhandle* %72)
  %74 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %75 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %74, i32 0, i32 0
  store %struct.icp_qat_uclo_objhandle* null, %struct.icp_qat_uclo_objhandle** %75, align 8
  br label %76

76:                                               ; preds = %63, %18
  ret void
}

declare dso_local i32 @qat_uclo_del_suof(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @kfree(%struct.icp_qat_uclo_objhandle*) #1

declare dso_local i32 @qat_uclo_free_ae_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
