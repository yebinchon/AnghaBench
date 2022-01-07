; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_op = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@REQ1_ECC_AFFINE_CONVERT = common dso_local global i32 0, align 4
@CCP_ENGINE_ECC = common dso_local global i32 0, align 4
@REQ1_ENGINE_SHIFT = common dso_local global i32 0, align 4
@REQ1_ECC_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@REQ1_EOM = common dso_local global i32 0, align 4
@CCP_MEMTYPE_SYSTEM = common dso_local global i32 0, align 4
@REQ4_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@REQ6_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_op*)* @ccp_perform_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_perform_ecc(%struct.ccp_op* %0) #0 {
  %2 = alloca %struct.ccp_op*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.ccp_op* %0, %struct.ccp_op** %2, align 8
  %4 = load i32, i32* @REQ1_ECC_AFFINE_CONVERT, align 4
  %5 = load i32, i32* @CCP_ENGINE_ECC, align 4
  %6 = load i32, i32* @REQ1_ENGINE_SHIFT, align 4
  %7 = shl i32 %5, %6
  %8 = or i32 %4, %7
  %9 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %10 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REQ1_ECC_FUNCTION_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %8, %15
  %17 = load i32, i32* @REQ1_EOM, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %21 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %29 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %31)
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %35 = load i32, i32* @REQ4_MEMTYPE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %38 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %40)
  %42 = or i32 %36, %41
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %45 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %47)
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %48, i32* %49, align 16
  %50 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %51 = load i32, i32* @REQ6_MEMTYPE_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %54 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %56)
  %58 = or i32 %52, %57
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = call i32 @ccp_do_cmd(%struct.ccp_op* %60, i32* %61, i32 %63)
  ret i32 %64
}

declare dso_local i32 @ccp_addr_lo(%struct.TYPE_15__*) #1

declare dso_local i32 @ccp_addr_hi(%struct.TYPE_15__*) #1

declare dso_local i32 @ccp_do_cmd(%struct.ccp_op*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
