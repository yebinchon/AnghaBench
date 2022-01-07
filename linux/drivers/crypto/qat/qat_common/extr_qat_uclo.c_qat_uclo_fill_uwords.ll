; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_fill_uwords.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_fill_uwords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uclo_objhandle = type { i32 }
%struct.icp_qat_uclo_encap_page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@INVLD_UWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_encap_page*, i32*, i32, i32, i32)* @qat_uclo_fill_uwords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_fill_uwords(%struct.icp_qat_uclo_objhandle* %0, %struct.icp_qat_uclo_encap_page* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %8 = alloca %struct.icp_qat_uclo_encap_page*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.icp_qat_uclo_objhandle* %0, %struct.icp_qat_uclo_objhandle** %7, align 8
  store %struct.icp_qat_uclo_encap_page* %1, %struct.icp_qat_uclo_encap_page** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %8, align 8
  %16 = icmp ne %struct.icp_qat_uclo_encap_page* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %12, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  br label %109

20:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %96, %20
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %8, align 8
  %24 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %99

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %8, align 8
  %30 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %28, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %8, align 8
  %41 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %8, align 8
  %49 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %47, %55
  %57 = sub i32 %56, 1
  %58 = icmp ule i32 %39, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %38
  %60 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %8, align 8
  %61 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %7, align 8
  %71 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %8, align 8
  %76 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %7, align 8
  %88 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32* %13, i8* %86, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, 13194139533311
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %59, %38, %27
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %21

99:                                               ; preds = %21
  %100 = load i32, i32* %13, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @INVLD_UWORD, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %17, %106, %99
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
