; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_get_sec_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_dpseci.c_dpseci_get_sec_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpseci_sec_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpseci_rsp_get_sec_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DPSECI_CMDID_GET_SEC_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpseci_get_sec_attr(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpseci_sec_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpseci_sec_attr*, align 8
  %10 = alloca %struct.fsl_mc_command, align 8
  %11 = alloca %struct.dpseci_rsp_get_sec_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dpseci_sec_attr* %3, %struct.dpseci_sec_attr** %9, align 8
  %13 = bitcast %struct.fsl_mc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPSECI_CMDID_GET_SEC_ATTR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %20 = call i32 @mc_send_command(%struct.fsl_mc_io* %19, %struct.fsl_mc_command* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %125

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.dpseci_rsp_get_sec_attr*
  store %struct.dpseci_rsp_get_sec_attr* %28, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %29 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %30 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %29, i32 0, i32 18
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %34 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %33, i32 0, i32 18
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %36 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %39 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %41 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %44 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %46 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %49 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %51 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %54 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %56 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %59 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %61 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %64 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %66 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %69 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %71 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %74 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %76 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %79 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %81 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %84 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %86 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %89 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %91 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %94 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %96 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %99 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %101 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %104 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %106 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %109 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %111 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %114 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %116 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %119 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.dpseci_rsp_get_sec_attr*, %struct.dpseci_rsp_get_sec_attr** %11, align 8
  %121 = getelementptr inbounds %struct.dpseci_rsp_get_sec_attr, %struct.dpseci_rsp_get_sec_attr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dpseci_sec_attr*, %struct.dpseci_sec_attr** %9, align 8
  %124 = getelementptr inbounds %struct.dpseci_sec_attr, %struct.dpseci_sec_attr* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %25, %23
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
