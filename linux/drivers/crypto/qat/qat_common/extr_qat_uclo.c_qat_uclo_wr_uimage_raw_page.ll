; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_uimage_raw_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_uimage_raw_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.icp_qat_uclo_objhandle* }
%struct.icp_qat_uclo_objhandle = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.icp_qat_uclo_encap_page = type { i32, i32 }

@UWORD_CPYBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uclo_encap_page*, i32)* @qat_uclo_wr_uimage_raw_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_wr_uimage_raw_page(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uclo_encap_page* %1, i32 %2) #0 {
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_uclo_encap_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %13 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_uclo_encap_page* %1, %struct.icp_qat_uclo_encap_page** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %15 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %14, i32 0, i32 0
  %16 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %15, align 8
  store %struct.icp_qat_uclo_objhandle* %16, %struct.icp_qat_uclo_objhandle** %12, align 8
  %17 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %12, align 8
  %18 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32* %13, i32 %24, i32 4)
  %26 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %5, align 8
  %27 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %29 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %5, align 8
  %30 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %68, %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @UWORD_CPYBUF_SIZE, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %11, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @UWORD_CPYBUF_SIZE, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %39
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %12, align 8
  %50 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %5, align 8
  %51 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %12, align 8
  %52 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @qat_uclo_fill_uwords(%struct.icp_qat_uclo_objhandle* %49, %struct.icp_qat_uclo_encap_page* %50, i32* %56, i32 %59, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %48
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %12, align 8
  %75 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle* %69, i8 zeroext %71, i32 %72, i32 %73, i32* %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %32

87:                                               ; preds = %32
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @qat_uclo_fill_uwords(%struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_encap_page*, i32*, i32, i32, i32) #1

declare dso_local i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
