; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_passthru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_perform_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_op = type { i32, i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@CCP_ENGINE_PASSTHRU = common dso_local global i32 0, align 4
@REQ1_ENGINE_SHIFT = common dso_local global i32 0, align 4
@REQ1_PT_BW_SHIFT = common dso_local global i32 0, align 4
@REQ1_PT_BS_SHIFT = common dso_local global i32 0, align 4
@CCP_MEMTYPE_SYSTEM = common dso_local global i32 0, align 4
@REQ4_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@CCP_PASSTHRU_BITWISE_NOOP = common dso_local global i32 0, align 4
@REQ4_KSB_SHIFT = common dso_local global i32 0, align 4
@CCP_SB_BYTES = common dso_local global i32 0, align 4
@CCP_MEMTYPE_SB = common dso_local global i32 0, align 4
@REQ6_MEMTYPE_SHIFT = common dso_local global i32 0, align 4
@REQ1_EOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_op*)* @ccp_perform_passthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_perform_passthru(%struct.ccp_op* %0) #0 {
  %2 = alloca %struct.ccp_op*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.ccp_op* %0, %struct.ccp_op** %2, align 8
  %4 = load i32, i32* @CCP_ENGINE_PASSTHRU, align 4
  %5 = load i32, i32* @REQ1_ENGINE_SHIFT, align 4
  %6 = shl i32 %4, %5
  %7 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REQ1_PT_BW_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %6, %13
  %15 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %16 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REQ1_PT_BS_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %14, %21
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %25 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %32 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  br label %48

39:                                               ; preds = %1
  %40 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %41 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %50 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %48
  %56 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %57 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %59)
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %63 = load i32, i32* @REQ4_MEMTYPE_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %66 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %68)
  %70 = or i32 %64, %69
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %70, i32* %71, align 4
  %72 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %73 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CCP_PASSTHRU_BITWISE_NOOP, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %55
  %80 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %81 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @REQ4_KSB_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %79, %55
  br label %102

89:                                               ; preds = %48
  %90 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %91 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CCP_SB_BYTES, align 4
  %96 = mul nsw i32 %94, %95
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %96, i32* %97, align 8
  %98 = load i32, i32* @CCP_MEMTYPE_SB, align 4
  %99 = load i32, i32* @REQ4_MEMTYPE_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %89, %88
  %103 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %104 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %102
  %110 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %111 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = call i32 @ccp_addr_lo(%struct.TYPE_15__* %113)
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %114, i32* %115, align 16
  %116 = load i32, i32* @CCP_MEMTYPE_SYSTEM, align 4
  %117 = load i32, i32* @REQ6_MEMTYPE_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %120 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = call i32 @ccp_addr_hi(%struct.TYPE_15__* %122)
  %124 = or i32 %118, %123
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %124, i32* %125, align 4
  br label %139

126:                                              ; preds = %102
  %127 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %128 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CCP_SB_BYTES, align 4
  %133 = mul nsw i32 %131, %132
  %134 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %133, i32* %134, align 16
  %135 = load i32, i32* @CCP_MEMTYPE_SB, align 4
  %136 = load i32, i32* @REQ6_MEMTYPE_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %126, %109
  %140 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %141 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* @REQ1_EOM, align 4
  %146 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %147 = load i32, i32* %146, align 16
  %148 = or i32 %147, %145
  store i32 %148, i32* %146, align 16
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.ccp_op*, %struct.ccp_op** %2, align 8
  %151 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %153 = call i32 @ARRAY_SIZE(i32* %152)
  %154 = call i32 @ccp_do_cmd(%struct.ccp_op* %150, i32* %151, i32 %153)
  ret i32 %154
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
