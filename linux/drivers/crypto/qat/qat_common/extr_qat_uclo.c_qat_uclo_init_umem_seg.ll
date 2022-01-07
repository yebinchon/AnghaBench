; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_umem_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_umem_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_uclo_objhandle* }
%struct.icp_qat_uclo_objhandle = type { i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.icp_qat_uof_initmem = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*)* @qat_uclo_init_umem_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_umem_seg(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uof_initmem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_uof_initmem*, align 8
  %6 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_uof_initmem* %1, %struct.icp_qat_uof_initmem** %5, align 8
  %11 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %12 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %11, i32 0, i32 0
  %13 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %12, align 8
  store %struct.icp_qat_uclo_objhandle* %13, %struct.icp_qat_uclo_objhandle** %6, align 8
  %14 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %15 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %18 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @qat_uclo_fetch_initmem_ae(%struct.icp_qat_fw_loader_handle* %17, %struct.icp_qat_uof_initmem* %18, i32 %19, i32* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %99

25:                                               ; preds = %2
  %26 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %27 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %30 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i64 @qat_uclo_create_batch_init_list(%struct.icp_qat_fw_loader_handle* %26, %struct.icp_qat_uof_initmem* %27, i32 %28, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %99

40:                                               ; preds = %25
  %41 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %42 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.icp_qat_uof_initmem*, %struct.icp_qat_uof_initmem** %5, align 8
  %45 = getelementptr inbounds %struct.icp_qat_uof_initmem, %struct.icp_qat_uof_initmem* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = ashr i32 %47, 2
  store i32 %48, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %95, %40
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %52 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %50, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %49
  %61 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %62 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %60
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %6, align 8
  %81 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %79, i32* %93, align 4
  br label %94

94:                                               ; preds = %78, %60
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %49

98:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %37, %22
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @qat_uclo_fetch_initmem_ae(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*, i32, i32*) #1

declare dso_local i64 @qat_uclo_create_batch_init_list(%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_initmem*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
