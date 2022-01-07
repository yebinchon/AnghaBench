; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_ustore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_ustore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_3__*, %struct.icp_qat_uclo_objhandle* }
%struct.TYPE_3__ = type { i8 }
%struct.icp_qat_uclo_objhandle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.icp_qat_uclo_encapme = type { %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uof_image* }
%struct.icp_qat_uclo_encap_page = type { i32, i32 }
%struct.icp_qat_uof_image = type { i32, i32 }

@ICP_QAT_UCLO_MAX_USTORE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uclo_encapme*)* @qat_uclo_init_ustore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_ustore(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uclo_encapme* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %5 = alloca %struct.icp_qat_uclo_encapme*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icp_qat_uclo_encap_page*, align 8
  %8 = alloca %struct.icp_qat_uof_image*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %13 = alloca i32*, align 8
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %4, align 8
  store %struct.icp_qat_uclo_encapme* %1, %struct.icp_qat_uclo_encapme** %5, align 8
  %14 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %15 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %14, i32 0, i32 1
  %16 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %15, align 8
  store %struct.icp_qat_uclo_objhandle* %16, %struct.icp_qat_uclo_objhandle** %12, align 8
  %17 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %5, align 8
  %18 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %17, i32 0, i32 1
  %19 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %18, align 8
  store %struct.icp_qat_uof_image* %19, %struct.icp_qat_uof_image** %8, align 8
  %20 = load i32, i32* @ICP_QAT_UCLO_MAX_USTORE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kcalloc(i32 %20, i32 4, i32 %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %110

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ICP_QAT_UCLO_MAX_USTORE, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %8, align 8
  %39 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %38, i32 0, i32 1
  %40 = call i32 @memcpy(i32* %37, i32* %39, i32 4)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %5, align 8
  %46 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %45, i32 0, i32 0
  %47 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %46, align 8
  store %struct.icp_qat_uclo_encap_page* %47, %struct.icp_qat_uclo_encap_page** %7, align 8
  store i8 0, i8* %9, align 1
  br label %48

48:                                               ; preds = %104, %44
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %52 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %50, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %48
  %59 = load i8, i8* %9, align 1
  %60 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %8, align 8
  %61 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %60, i32 0, i32 0
  %62 = bitcast i32* %61 to i64*
  %63 = call i32 @test_bit(i8 zeroext %59, i64* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %104

66:                                               ; preds = %58
  %67 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %12, align 8
  %68 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i8, i8* %9, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %7, align 8
  %76 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %7, align 8
  %79 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %77, %80
  store i32 %81, i32* %11, align 4
  %82 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %7, align 8
  %85 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle* %82, i8 zeroext %83, i32 0, i32 %86, i32* %88)
  %90 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %4, align 8
  %91 = load i8, i8* %9, align 1
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub i32 %93, %94
  %96 = add i32 %95, 1
  %97 = load i32*, i32** %13, align 8
  %98 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %7, align 8
  %99 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = call i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle* %90, i8 zeroext %91, i32 %92, i32 %96, i32* %102)
  br label %104

104:                                              ; preds = %66, %65
  %105 = load i8, i8* %9, align 1
  %106 = add i8 %105, 1
  store i8 %106, i8* %9, align 1
  br label %48

107:                                              ; preds = %48
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @kfree(i32* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %25
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @test_bit(i8 zeroext, i64*) #1

declare dso_local i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
