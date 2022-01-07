; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c___sev_do_cmd_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c___sev_do_cmd_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_device = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@psp_master = common dso_local global %struct.psp_device* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@psp_dead = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"sev command id %#x buffer 0x%08x%08x timeout %us\0A\00", align 1
@psp_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"(in):  \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@PSP_CMDRESP_CMD_SHIFT = common dso_local global i32 0, align 4
@PSP_CMDRESP_IOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"sev command %#x timed out, disabling PSP \0A\00", align 1
@psp_cmd_timeout = common dso_local global i32 0, align 4
@PSP_CMDRESP_ERR_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"sev command %#x failed (%#010x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"(out): \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @__sev_do_cmd_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sev_do_cmd_locked(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.psp_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.psp_device*, %struct.psp_device** @psp_master, align 8
  store %struct.psp_device* %13, %struct.psp_device** %8, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %15 = icmp ne %struct.psp_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %148

19:                                               ; preds = %3
  %20 = load i32, i32* @psp_dead, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %148

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @__psp_pa(i8* %29)
  %31 = call i32 @lower_32_bits(i32 %30)
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @__psp_pa(i8* %38)
  %40 = call i32 @upper_32_bits(i32 %39)
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  store i32 %43, i32* %10, align 4
  %44 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %45 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @psp_timeout, align 4
  %51 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @sev_cmd_buffer_len(i32 %54)
  %56 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 16, i32 2, i8* %53, i32 %55, i32 0)
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %59 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %62 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %60, %65
  %67 = call i32 @iowrite32(i32 %57, i64 %66)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %70 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %73 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %71, %76
  %78 = call i32 @iowrite32(i32 %68, i64 %77)
  %79 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %80 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @PSP_CMDRESP_CMD_SHIFT, align 4
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* @PSP_CMDRESP_IOC, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %90 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %93 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %91, %96
  %98 = call i32 @iowrite32(i32 %88, i64 %97)
  %99 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %100 = load i32, i32* @psp_timeout, align 4
  %101 = call i32 @sev_wait_cmd_ioc(%struct.psp_device* %99, i32* %11, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %42
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %7, align 8
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %111 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  store i32 1, i32* @psp_dead, align 4
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %4, align 4
  br label %148

116:                                              ; preds = %42
  %117 = load i32, i32* @psp_cmd_timeout, align 4
  store i32 %117, i32* @psp_timeout, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @PSP_CMDRESP_ERR_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @PSP_CMDRESP_ERR_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.psp_device*, %struct.psp_device** %8, align 8
  %132 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @PSP_CMDRESP_ERR_MASK, align 4
  %137 = and i32 %135, %136
  %138 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub i32 0, %139
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %130, %125
  %142 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @sev_cmd_buffer_len(i32 %144)
  %146 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %142, i32 16, i32 2, i8* %143, i32 %145, i32 0)
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %141, %109, %22, %16
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @__psp_pa(i8*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sev_cmd_buffer_len(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @sev_wait_cmd_ioc(%struct.psp_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
