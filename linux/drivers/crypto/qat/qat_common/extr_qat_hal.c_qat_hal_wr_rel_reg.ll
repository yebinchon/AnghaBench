; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wr_rel_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wr_rel_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@__const.qat_hal_wr_rel_reg.insts = private unnamed_addr constant [4 x i32] [i32 1073741824, i32 1073741824, i32 787200, i32 65536], align 16
@BAD_REGADDR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [24 x i8] c"QAT: bad destAddr=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICP_NO_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i32, i16, i32)* @qat_hal_wr_rel_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca [4 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %24 = bitcast [4 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x i32]* @__const.qat_hal_wr_rel_reg.insts to i8*), i64 16, i1 false)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  store i32 %26, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i16, i16* %12, align 2
  %29 = call zeroext i16 @qat_hal_get_reg_addr(i32 %27, i16 zeroext %28)
  store i16 %29, i16* %16, align 2
  %30 = load i16, i16* %16, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @BAD_REGADDR, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i16, i16* %16, align 2
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i16 zeroext %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %140

40:                                               ; preds = %6
  %41 = load i32, i32* %13, align 4
  %42 = and i32 65535, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %18, align 2
  %44 = load i32, i32* %13, align 4
  %45 = lshr i32 %44, 16
  %46 = and i32 65535, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %17, align 2
  %48 = load i32, i32* @ICP_NO_DEST, align 4
  %49 = load i16, i16* %17, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 255, %50
  %52 = trunc i32 %51 to i16
  %53 = call zeroext i16 @qat_hal_get_reg_addr(i32 %48, i16 zeroext %52)
  store i16 %53, i16* %14, align 2
  %54 = load i32, i32* @ICP_NO_DEST, align 4
  %55 = load i16, i16* %18, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 255, %56
  %58 = trunc i32 %57 to i16
  %59 = call zeroext i16 @qat_hal_get_reg_addr(i32 %54, i16 zeroext %58)
  store i16 %59, i16* %15, align 2
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %96 [
    i32 128, label %61
  ]

61:                                               ; preds = %40
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = load i16, i16* %17, align 2
  %65 = zext i16 %64 to i32
  %66 = ashr i32 %65, 8
  %67 = shl i32 %66, 20
  %68 = or i32 %63, %67
  %69 = load i16, i16* %14, align 2
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 1023
  %72 = shl i32 %71, 10
  %73 = or i32 %68, %72
  %74 = load i16, i16* %16, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, 1023
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %77, i32* %78, align 16
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i16, i16* %18, align 2
  %82 = zext i16 %81 to i32
  %83 = ashr i32 %82, 8
  %84 = shl i32 %83, 20
  %85 = or i32 %80, %84
  %86 = load i16, i16* %15, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 1023
  %89 = shl i32 %88, 10
  %90 = or i32 %85, %89
  %91 = load i16, i16* %16, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %92, 1023
  %94 = or i32 %90, %93
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %94, i32* %95, align 4
  br label %131

96:                                               ; preds = %40
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = load i16, i16* %17, align 2
  %100 = zext i16 %99 to i32
  %101 = ashr i32 %100, 8
  %102 = shl i32 %101, 20
  %103 = or i32 %98, %102
  %104 = load i16, i16* %16, align 2
  %105 = zext i16 %104 to i32
  %106 = and i32 %105, 1023
  %107 = shl i32 %106, 10
  %108 = or i32 %103, %107
  %109 = load i16, i16* %14, align 2
  %110 = zext i16 %109 to i32
  %111 = and i32 %110, 1023
  %112 = or i32 %108, %111
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %112, i32* %113, align 16
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load i16, i16* %18, align 2
  %117 = zext i16 %116 to i32
  %118 = ashr i32 %117, 8
  %119 = shl i32 %118, 20
  %120 = or i32 %115, %119
  %121 = load i16, i16* %16, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %122, 1023
  %124 = shl i32 %123, 10
  %125 = or i32 %120, %124
  %126 = load i16, i16* %15, align 2
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 1023
  %129 = or i32 %125, %128
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %96, %61
  %132 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %133 = load i8, i8* %9, align 1
  %134 = load i8, i8* %10, align 1
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %20, align 4
  %138 = mul nsw i32 %137, 5
  %139 = call i32 @qat_hal_exec_micro_inst(%struct.icp_qat_fw_loader_handle* %132, i8 zeroext %133, i8 zeroext %134, i32* %135, i32 %136, i32 1, i32 %138, i32* null)
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %131, %35
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local zeroext i16 @qat_hal_get_reg_addr(i32, i16 zeroext) #2

declare dso_local i32 @pr_err(i8*, i16 zeroext) #2

declare dso_local i32 @qat_hal_exec_micro_inst(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32*, i32, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
