; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_ae_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_ae_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uclo_objhandle = type { i32, %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_aedata* }
%struct.icp_qat_uclo_encapme = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.icp_qat_uclo_aedata = type { i64, i32, %struct.icp_qat_uclo_aeslice* }
%struct.icp_qat_uclo_aeslice = type { i32*, %struct.icp_qat_uclo_page*, i64, %struct.icp_qat_uclo_encapme* }
%struct.icp_qat_uclo_page = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_uclo_objhandle*, i32, i32)* @qat_uclo_init_ae_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_ae_data(%struct.icp_qat_uclo_objhandle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_uclo_aedata*, align 8
  %9 = alloca %struct.icp_qat_uclo_encapme*, align 8
  %10 = alloca %struct.icp_qat_uclo_page*, align 8
  %11 = alloca %struct.icp_qat_uclo_aeslice*, align 8
  store %struct.icp_qat_uclo_objhandle* %0, %struct.icp_qat_uclo_objhandle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.icp_qat_uclo_page* null, %struct.icp_qat_uclo_page** %10, align 8
  store %struct.icp_qat_uclo_aeslice* null, %struct.icp_qat_uclo_aeslice** %11, align 8
  %12 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %13 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %12, i32 0, i32 2
  %14 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %14, i64 %16
  store %struct.icp_qat_uclo_aedata* %17, %struct.icp_qat_uclo_aedata** %8, align 8
  %18 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %19 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %18, i32 0, i32 1
  %20 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %20, i64 %22
  store %struct.icp_qat_uclo_encapme* %23, %struct.icp_qat_uclo_encapme** %9, align 8
  %24 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %8, align 8
  %25 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %24, i32 0, i32 2
  %26 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %25, align 8
  %27 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %8, align 8
  %28 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %26, i64 %29
  store %struct.icp_qat_uclo_aeslice* %30, %struct.icp_qat_uclo_aeslice** %11, align 8
  %31 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %9, align 8
  %32 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %33 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %32, i32 0, i32 3
  store %struct.icp_qat_uclo_encapme* %31, %struct.icp_qat_uclo_encapme** %33, align 8
  %34 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %9, align 8
  %35 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %9, align 8
  %40 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %45 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %47 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %8, align 8
  %50 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %54

51:                                               ; preds = %3
  %52 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %53 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %38
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 4, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %59 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %61 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %107

67:                                               ; preds = %54
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kzalloc(i32 16, i32 %68)
  %70 = bitcast i8* %69 to %struct.icp_qat_uclo_page*
  %71 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %72 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %71, i32 0, i32 1
  store %struct.icp_qat_uclo_page* %70, %struct.icp_qat_uclo_page** %72, align 8
  %73 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %74 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %73, i32 0, i32 1
  %75 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %74, align 8
  %76 = icmp ne %struct.icp_qat_uclo_page* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  br label %98

78:                                               ; preds = %67
  %79 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %80 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %79, i32 0, i32 1
  %81 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %80, align 8
  store %struct.icp_qat_uclo_page* %81, %struct.icp_qat_uclo_page** %10, align 8
  %82 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %9, align 8
  %83 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %10, align 8
  %86 = getelementptr inbounds %struct.icp_qat_uclo_page, %struct.icp_qat_uclo_page* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %88 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %91 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %90, i32 0, i32 1
  %92 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %91, align 8
  %93 = getelementptr inbounds %struct.icp_qat_uclo_page, %struct.icp_qat_uclo_page* %92, i32 0, i32 0
  store i32* %89, i32** %93, align 8
  %94 = load %struct.icp_qat_uclo_aedata*, %struct.icp_qat_uclo_aedata** %8, align 8
  %95 = getelementptr inbounds %struct.icp_qat_uclo_aedata, %struct.icp_qat_uclo_aedata* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  store i32 0, i32* %4, align 4
  br label %107

98:                                               ; preds = %77
  %99 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %100 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @kfree(i32* %101)
  %103 = load %struct.icp_qat_uclo_aeslice*, %struct.icp_qat_uclo_aeslice** %11, align 8
  %104 = getelementptr inbounds %struct.icp_qat_uclo_aeslice, %struct.icp_qat_uclo_aeslice* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %98, %78, %64
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
