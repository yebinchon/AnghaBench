; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_rsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_op = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@CCP_ENGINE_RSA = common dso_local global i32 0, align 4
@REQ1_ENGINE_SHIFT = common dso_local global i32 0, align 4
@REQ1_RSA_MOD_SIZE_SHIFT = common dso_local global i32 0, align 4
@REQ1_KEY_KSB_SHIFT = common dso_local global i32 0, align 4
@REQ1_EOM = common dso_local global i32 0, align 4
@REQ4_KSB_SHIFT = common dso_local global i32 0, align 4
@CCP_MEMTYPE_SYSTEM = common dso_local global i32 0, align 4
@REQ4_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@REQ6_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_op*)* @ccp_perform_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_perform_rsa(%struct.ccp_op* %0) #0 {
  %2 = alloca %struct.ccp_op*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.ccp_op* %0, %struct.ccp_op** %2, align 8
  %4 = load i32, i32* @CCP_ENGINE_RSA, align 4
  %5 = load i32, i32* @REQ1_ENGINE_SHIFT, align 4
  %6 = shl i32 %4, %5
  %7 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REQ1_RSA_MOD_SIZE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %6, %13
  %15 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %16 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REQ1_KEY_KSB_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = load i32, i32* @REQ1_EOM, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %25 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %32 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @ccp_addr_lo(i32* %34)
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %38 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @REQ4_KSB_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %43 = load i32, i32* @REQ4_MEMTYPE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %47 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i32 @ccp_addr_hi(i32* %49)
  %51 = or i32 %45, %50
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %54 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @ccp_addr_lo(i32* %56)
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %57, i32* %58, align 16
  %59 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %60 = load i32, i32* @REQ6_MEMTYPE_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %63 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = call i32 @ccp_addr_hi(i32* %65)
  %67 = or i32 %61, %66
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %67, i32* %68, align 4
  %69 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %72 = call i32 @ARRAY_SIZE(i32* %71)
  %73 = call i32 @ccp_do_cmd(%struct.ccp_op* %69, i32* %70, i32 %72)
  ret i32 %73
}

declare dso_local i32 @ccp_addr_lo(i32*) #1

declare dso_local i32 @ccp_addr_hi(i32*) #1

declare dso_local i32 @ccp_do_cmd(%struct.ccp_op*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
