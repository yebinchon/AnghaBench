; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_ps2data = type { i32, i64, i32 }

@PS2_REG_LSTS = common dso_local global i64 0, align 8
@PS2_REG_FSTS = common dso_local global i64 0, align 8
@PS2_LINE_ERROR_BIT = common dso_local global i32 0, align 4
@SERIO_FRAME = common dso_local global i32 0, align 4
@PS2_LSTS_PARERR = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@SERIO_TIMEOUT = common dso_local global i32 0, align 4
@PS2_LSTS_TXTDO = common dso_local global i32 0, align 4
@PS2_LSTS_STOPERR = common dso_local global i32 0, align 4
@PS2_LSTS_ACKERR = common dso_local global i32 0, align 4
@PS2_LSTS_RXTDO = common dso_local global i32 0, align 4
@PS2_FIFO_ERROR_BIT = common dso_local global i32 0, align 4
@PS2_FSTS_TXUF = common dso_local global i32 0, align 4
@PS2_FSTS_TXOF = common dso_local global i32 0, align 4
@PS2_FSTS_TXRDY = common dso_local global i32 0, align 4
@PS2_FSTS_RXUF = common dso_local global i32 0, align 4
@PS2_FSTS_RXOF = common dso_local global i32 0, align 4
@PS2_FSTS_RXRDY = common dso_local global i32 0, align 4
@PS2_REG_DATA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun4i_ps2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_ps2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sun4i_ps2data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sun4i_ps2data*
  store %struct.sun4i_ps2data* %12, %struct.sun4i_ps2data** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %14 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %17 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PS2_REG_LSTS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %23 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PS2_REG_FSTS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PS2_LINE_ERROR_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %80

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PS2_LINE_ERROR_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @SERIO_FRAME, align 4
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PS2_LSTS_PARERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SERIO_PARITY, align 4
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PS2_LSTS_PARERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @SERIO_TIMEOUT, align 4
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @PS2_LSTS_TXTDO, align 4
  %65 = load i32, i32* @PS2_LSTS_STOPERR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PS2_LSTS_ACKERR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PS2_LSTS_PARERR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PS2_LSTS_RXTDO, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %75 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PS2_REG_LSTS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  br label %80

80:                                               ; preds = %60, %2
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PS2_FIFO_ERROR_BIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %80
  %86 = load i32, i32* @PS2_FSTS_TXUF, align 4
  %87 = load i32, i32* @PS2_FSTS_TXOF, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @PS2_FSTS_TXRDY, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @PS2_FSTS_RXUF, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PS2_FSTS_RXOF, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PS2_FSTS_RXRDY, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %99 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PS2_REG_FSTS, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  br label %104

104:                                              ; preds = %85, %80
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 3
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %112, %104
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %10, align 4
  %111 = icmp ne i32 %109, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %114 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PS2_REG_DATA, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @readl(i64 %117)
  %119 = and i32 %118, 255
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %8, align 1
  %121 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %122 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i8, i8* %8, align 1
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @serio_interrupt(i32 %123, i8 zeroext %124, i32 %125)
  br label %108

127:                                              ; preds = %108
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %130 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PS2_REG_LSTS, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %137 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PS2_REG_FSTS, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  %142 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %5, align 8
  %143 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %145
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @serio_interrupt(i32, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
