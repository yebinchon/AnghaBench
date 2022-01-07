; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_set_emss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_set_emss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@AF_INET = common dso_local global i64 0, align 8
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Warning: misaligned mtu idx %u mss %u emss=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"mss_idx %u mss %u emss=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*, i32)* @set_emss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_emss(%struct.c4iw_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %6 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @TCPOPT_MSS_G(i32 %13)
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @AF_INET, align 8
  %19 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %20 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i64 4, i64 4
  %27 = sub i64 %17, %26
  %28 = sub i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %31 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %33 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %36 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @TCPOPT_TSTAMP_G(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %2
  %41 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %42 = call i64 @round_up(i32 %41, i32 4)
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  br label %49

49:                                               ; preds = %40, %2
  %50 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %51 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 128
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %56 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %55, i32 0, i32 0
  store i32 128, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %59 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 7
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @TCPOPT_MSS_G(i32 %64)
  %66 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %67 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %70 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %63, %57
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @TCPOPT_MSS_G(i32 %74)
  %76 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %77 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %80 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %75, i32 %78, i32 %81)
  ret void
}

declare dso_local i64 @TCPOPT_MSS_G(i32) #1

declare dso_local i64 @TCPOPT_TSTAMP_G(i32) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
