; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_isr_byte_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_isr_byte_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@I801_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Illegal SMBus block read size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SMBus block read size is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Discarding extra byte on block read\0A\00", align 1
@SMBHSTCNT_LAST_BYTE = common dso_local global i32 0, align 4
@SMBHSTSTS_BYTE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i801_priv*)* @i801_isr_byte_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i801_isr_byte_done(%struct.i801_priv* %0) #0 {
  %2 = alloca %struct.i801_priv*, align 8
  store %struct.i801_priv* %0, %struct.i801_priv** %2, align 8
  %3 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %4 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %110

7:                                                ; preds = %1
  %8 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %9 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 28
  %12 = load i32, i32* @I801_BLOCK_DATA, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %7
  %15 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %16 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %21 = call i32 @SMBHSTDAT0(%struct.i801_priv* %20)
  %22 = call i32 @inb_p(i32 %21)
  %23 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %24 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %26 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %31 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29, %19
  %36 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %37 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %41 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %45 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %46 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %56

47:                                               ; preds = %29
  %48 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %49 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %53 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %47, %35
  %57 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %58 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %61 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -1
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %14, %7
  %65 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %66 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %69 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %74 = call i32 @SMBBLKDAT(%struct.i801_priv* %73)
  %75 = call i32 @inb(i32 %74)
  %76 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %77 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %80 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %75, i32* %84, align 4
  br label %91

85:                                               ; preds = %64
  %86 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %87 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %72
  %92 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %93 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %96 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %102 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SMBHSTCNT_LAST_BYTE, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %107 = call i32 @SMBHSTCNT(%struct.i801_priv* %106)
  %108 = call i32 @outb_p(i32 %105, i32 %107)
  br label %109

109:                                              ; preds = %100, %91
  br label %134

110:                                              ; preds = %1
  %111 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %112 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %115 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %110
  %120 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %121 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %124 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %131 = call i32 @SMBBLKDAT(%struct.i801_priv* %130)
  %132 = call i32 @outb_p(i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %119, %110
  br label %134

134:                                              ; preds = %133, %109
  %135 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %136 = load %struct.i801_priv*, %struct.i801_priv** %2, align 8
  %137 = call i32 @SMBHSTSTS(%struct.i801_priv* %136)
  %138 = call i32 @outb_p(i32 %135, i32 %137)
  ret void
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i801_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @SMBBLKDAT(%struct.i801_priv*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
