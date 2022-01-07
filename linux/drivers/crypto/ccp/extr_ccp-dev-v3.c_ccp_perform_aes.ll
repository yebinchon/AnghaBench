; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_aes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_op = type { i32, i32, i64, i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_15__ }

@CCP_ENGINE_AES = common dso_local global i32 0, align 4
@REQ1_ENGINE_SHIFT = common dso_local global i32 0, align 4
@REQ1_AES_TYPE_SHIFT = common dso_local global i32 0, align 4
@REQ1_AES_MODE_SHIFT = common dso_local global i32 0, align 4
@REQ1_AES_ACTION_SHIFT = common dso_local global i32 0, align 4
@REQ1_KEY_KSB_SHIFT = common dso_local global i32 0, align 4
@REQ4_KSB_SHIFT = common dso_local global i32 0, align 4
@CCP_MEMTYPE_SYSTEM = common dso_local global i32 0, align 4
@REQ4_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@REQ6_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@CCP_AES_MODE_CFB = common dso_local global i32 0, align 4
@REQ1_AES_CFB_SIZE_SHIFT = common dso_local global i32 0, align 4
@REQ1_EOM = common dso_local global i32 0, align 4
@REQ1_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_op*)* @ccp_perform_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_perform_aes(%struct.ccp_op* %0) #0 {
  %2 = alloca %struct.ccp_op*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.ccp_op* %0, %struct.ccp_op** %2, align 8
  %4 = load i32, i32* @CCP_ENGINE_AES, align 4
  %5 = load i32, i32* @REQ1_ENGINE_SHIFT, align 4
  %6 = shl i32 %4, %5
  %7 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REQ1_AES_TYPE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %6, %13
  %15 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %16 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REQ1_AES_MODE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %14, %21
  %23 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %24 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @REQ1_AES_ACTION_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %22, %29
  %31 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %32 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @REQ1_KEY_KSB_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %30, %35
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %39 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %47 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %49)
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %53 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @REQ4_KSB_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %58 = load i32, i32* @REQ4_MEMTYPE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %62 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %64)
  %66 = or i32 %60, %65
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %69 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %71)
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %72, i32* %73, align 16
  %74 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %75 = load i32, i32* @REQ6_MEMTYPE_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %78 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %80)
  %82 = or i32 %76, %81
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %82, i32* %83, align 4
  %84 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %85 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CCP_AES_MODE_CFB, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %1
  %92 = load i32, i32* @REQ1_AES_CFB_SIZE_SHIFT, align 4
  %93 = shl i32 127, %92
  %94 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 16
  br label %97

97:                                               ; preds = %91, %1
  %98 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %99 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @REQ1_EOM, align 4
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 16
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %109 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @REQ1_INIT, align 4
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 16
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %121 = call i32 @ARRAY_SIZE(i32* %120)
  %122 = call i32 @ccp_do_cmd(%struct.ccp_op* %118, i32* %119, i32 %121)
  ret i32 %122
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
