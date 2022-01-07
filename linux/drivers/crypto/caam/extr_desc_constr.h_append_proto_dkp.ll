; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_desc_constr.h_append_proto_dkp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_desc_constr.h_append_proto_dkp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alginfo = type { i32, i32, i32, i32, i32, i64 }

@OP_ALG_ALGSEL_SUBMASK = common dso_local global i32 0, align 4
@OP_ALG_ALGSEL_SHIFT = common dso_local global i32 0, align 4
@OP_TYPE_UNI_PROTOCOL = common dso_local global i32 0, align 4
@OP_PCL_DKP_SRC_PTR = common dso_local global i32 0, align 4
@OP_PCL_DKP_DST_IMM = common dso_local global i32 0, align 4
@CAAM_CMD_SZ = common dso_local global i32 0, align 4
@CAAM_PTR_SZ = common dso_local global i32 0, align 4
@OP_PCL_DKP_SRC_IMM = common dso_local global i32 0, align 4
@OP_PCL_DKP_DST_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.alginfo*)* @append_proto_dkp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_proto_dkp(i32* %0, %struct.alginfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.alginfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.alginfo* %1, %struct.alginfo** %4, align 8
  %7 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %8 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @OP_ALG_ALGSEL_SUBMASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @OP_ALG_ALGSEL_SHIFT, align 4
  %13 = shl i32 32, %12
  %14 = or i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %16 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %103

19:                                               ; preds = %2
  %20 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %21 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %24 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @OP_TYPE_UNI_PROTOCOL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @OP_PCL_DKP_SRC_PTR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @OP_PCL_DKP_DST_IMM, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %37 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = call i32 @append_operation(i32* %28, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %43 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @append_ptr(i32* %41, i32 %44)
  %46 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %47 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CAAM_CMD_SZ, align 4
  %50 = call i32 @ALIGN(i32 %48, i32 %49)
  %51 = load i32, i32* @CAAM_PTR_SZ, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* @CAAM_CMD_SZ, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %90

55:                                               ; preds = %19
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @OP_TYPE_UNI_PROTOCOL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @OP_PCL_DKP_SRC_IMM, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @OP_PCL_DKP_DST_IMM, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %65 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @append_operation(i32* %56, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %71 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %74 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @append_data(i32* %69, i32 %72, i32 %75)
  %77 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %78 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CAAM_CMD_SZ, align 4
  %81 = call i32 @ALIGN(i32 %79, i32 %80)
  %82 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %83 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CAAM_CMD_SZ, align 4
  %86 = call i32 @ALIGN(i32 %84, i32 %85)
  %87 = sub nsw i32 %81, %86
  %88 = load i32, i32* @CAAM_CMD_SZ, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %55, %27
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @caam32_to_cpu(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @cpu_to_caam32(i64 %99)
  %101 = load i32*, i32** %3, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %90
  br label %122

103:                                              ; preds = %2
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* @OP_TYPE_UNI_PROTOCOL, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @OP_PCL_DKP_SRC_PTR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @OP_PCL_DKP_DST_PTR, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %113 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %111, %114
  %116 = call i32 @append_operation(i32* %104, i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.alginfo*, %struct.alginfo** %4, align 8
  %119 = getelementptr inbounds %struct.alginfo, %struct.alginfo* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @append_ptr(i32* %117, i32 %120)
  br label %122

122:                                              ; preds = %103, %102
  ret void
}

declare dso_local i32 @append_operation(i32*, i32) #1

declare dso_local i32 @append_ptr(i32*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @append_data(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_caam32(i64) #1

declare dso_local i64 @caam32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
