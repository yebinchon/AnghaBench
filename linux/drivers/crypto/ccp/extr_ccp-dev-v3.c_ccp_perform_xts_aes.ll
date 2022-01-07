; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_xts_aes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_xts_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_op = type { i32, i32, i64, i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@CCP_ENGINE_XTS_AES_128 = common dso_local global i32 0, align 4
@REQ1_ENGINE_SHIFT = common dso_local global i32 0, align 4
@REQ1_AES_ACTION_SHIFT = common dso_local global i32 0, align 4
@REQ1_XTS_AES_SIZE_SHIFT = common dso_local global i32 0, align 4
@REQ1_KEY_KSB_SHIFT = common dso_local global i32 0, align 4
@REQ4_KSB_SHIFT = common dso_local global i32 0, align 4
@CCP_MEMTYPE_SYSTEM = common dso_local global i32 0, align 4
@REQ4_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@REQ6_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@REQ1_EOM = common dso_local global i32 0, align 4
@REQ1_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_op*)* @ccp_perform_xts_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_perform_xts_aes(%struct.ccp_op* %0) #0 {
  %2 = alloca %struct.ccp_op*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.ccp_op* %0, %struct.ccp_op** %2, align 8
  %4 = load i32, i32* @CCP_ENGINE_XTS_AES_128, align 4
  %5 = load i32, i32* @REQ1_ENGINE_SHIFT, align 4
  %6 = shl i32 %4, %5
  %7 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REQ1_AES_ACTION_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %6, %13
  %15 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %16 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REQ1_XTS_AES_SIZE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %14, %21
  %23 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %24 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @REQ1_KEY_KSB_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %22, %27
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %31 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %39 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %41)
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %45 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @REQ4_KSB_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %50 = load i32, i32* @REQ4_MEMTYPE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %54 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %56)
  %58 = or i32 %52, %57
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %61 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %63)
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %64, i32* %65, align 16
  %66 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %67 = load i32, i32* @REQ6_MEMTYPE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %70 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %72)
  %74 = or i32 %68, %73
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %74, i32* %75, align 4
  %76 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %77 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %1
  %81 = load i32, i32* @REQ1_EOM, align 4
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 16
  br label %85

85:                                               ; preds = %80, %1
  %86 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %87 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* @REQ1_INIT, align 4
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 16
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %99 = call i32 @ARRAY_SIZE(i32* %98)
  %100 = call i32 @ccp_do_cmd(%struct.ccp_op* %96, i32* %97, i32 %99)
  ret i32 %100
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
