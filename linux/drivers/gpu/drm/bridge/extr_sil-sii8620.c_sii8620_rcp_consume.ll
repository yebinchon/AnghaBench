; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_rcp_consume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_rcp_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32, i32 }

@MHL_RCP_KEY_RELEASED_MASK = common dso_local global i32 0, align 4
@MHL_RCP_KEY_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RCP input device not initialized\0A\00", align 1
@RC_PROTO_CEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii8620*, i32)* @sii8620_rcp_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii8620_rcp_consume(%struct.sii8620* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sii8620*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MHL_RCP_KEY_RELEASED_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @MHL_RCP_KEY_ID_MASK, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %17 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %22 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %30 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RC_PROTO_CEC, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @rc_keydown(i32 %31, i32 %32, i32 %33, i32 0)
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.sii8620*, %struct.sii8620** %4, align 8
  %37 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rc_keyup(i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
