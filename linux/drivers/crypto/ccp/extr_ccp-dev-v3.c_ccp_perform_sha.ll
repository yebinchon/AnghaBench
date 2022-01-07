; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_sha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_op = type { i32, %struct.TYPE_10__, i64, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CCP_ENGINE_SHA = common dso_local global i32 0, align 4
@REQ1_ENGINE_SHIFT = common dso_local global i32 0, align 4
@REQ1_SHA_TYPE_SHIFT = common dso_local global i32 0, align 4
@REQ1_INIT = common dso_local global i32 0, align 4
@REQ4_KSB_SHIFT = common dso_local global i32 0, align 4
@CCP_MEMTYPE_SYSTEM = common dso_local global i32 0, align 4
@REQ4_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@REQ1_EOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_op*)* @ccp_perform_sha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_perform_sha(%struct.ccp_op* %0) #0 {
  %2 = alloca %struct.ccp_op*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.ccp_op* %0, %struct.ccp_op** %2, align 8
  %4 = load i32, i32* @CCP_ENGINE_SHA, align 4
  %5 = load i32, i32* @REQ1_ENGINE_SHIFT, align 4
  %6 = shl i32 %4, %5
  %7 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REQ1_SHA_TYPE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %6, %13
  %15 = load i32, i32* @REQ1_INIT, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %19 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %27 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @ccp_addr_lo(%struct.TYPE_11__* %29)
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %33 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @REQ4_KSB_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %38 = load i32, i32* @REQ4_MEMTYPE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %42 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @ccp_addr_hi(%struct.TYPE_11__* %44)
  %46 = or i32 %40, %45
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %49 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %1
  %53 = load i32, i32* @REQ1_EOM, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 16
  %57 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %58 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @lower_32_bits(i32 %61)
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %62, i32* %63, align 16
  %64 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %65 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @upper_32_bits(i32 %68)
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %69, i32* %70, align 4
  br label %74

71:                                               ; preds = %1
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 0, i32* %72, align 16
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %52
  %75 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %78 = call i32 @ARRAY_SIZE(i32* %77)
  %79 = call i32 @ccp_do_cmd(%struct.ccp_op* %75, i32* %76, i32 %78)
  ret i32 %79
}

declare dso_local i32 @ccp_addr_lo(%struct.TYPE_11__*) #1

declare dso_local i32 @ccp_addr_hi(%struct.TYPE_11__*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ccp_do_cmd(%struct.ccp_op*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
