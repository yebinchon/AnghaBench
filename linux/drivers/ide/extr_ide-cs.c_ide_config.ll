; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cs.c_ide_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cs.c_ide_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i64, i32, i32, i32, %struct.TYPE_6__**, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.ide_host* }
%struct.ide_host = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ide_config(0x%p)\0A\00", align 1
@MANFID_KME = common dso_local global i64 0, align 8
@PRODID_KME_KXLC005_A = common dso_local global i64 0, align 8
@PRODID_KME_KXLC005_B = common dso_local global i64 0, align 8
@pcmcia_check_one_config = common dso_local global i32 0, align 4
@CONF_AUTO_CHECK_VCC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ide-cs: hd%c: Vpp = %d.%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ide_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ide_host*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 3
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %16 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %15)
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MANFID_KME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PRODID_KME_KXLC005_A, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PRODID_KME_KXLC005_B, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i1 [ false, %1 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = load i32, i32* @pcmcia_check_one_config, align 4
  %41 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %39, i32 %40, i32* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load i32, i32* @CONF_AUTO_CHECK_VCC, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %47 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = load i32, i32* @pcmcia_check_one_config, align 4
  %52 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %50, i32 %51, i32* %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %172

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 5
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  %64 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %65 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %56
  %73 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %73, i32 0, i32 5
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  br label %89

80:                                               ; preds = %56
  %81 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %82 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 14
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %80, %72
  %90 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %91 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %172

95:                                               ; preds = %89
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %172

101:                                              ; preds = %95
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @outb(i32 2, i64 %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  %109 = call i32 @outb(i32 129, i64 %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %114 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %117 = call %struct.ide_host* @idecs_register(i64 %111, i64 %112, i32 %115, %struct.pcmcia_device* %116)
  store %struct.ide_host* %117, %struct.ide_host** %9, align 8
  %118 = load %struct.ide_host*, %struct.ide_host** %9, align 8
  %119 = icmp eq %struct.ide_host* %118, null
  br i1 %119, label %120, label %141

120:                                              ; preds = %110
  %121 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %122 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %121, i32 0, i32 5
  %123 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %123, i64 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = call i32 @resource_size(%struct.TYPE_6__* %125)
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %128, label %141

128:                                              ; preds = %120
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, 16
  %131 = call i32 @outb(i32 2, i64 %130)
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 16
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, 16
  %136 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %137 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %140 = call %struct.ide_host* @idecs_register(i64 %133, i64 %135, i32 %138, %struct.pcmcia_device* %139)
  store %struct.ide_host* %140, %struct.ide_host** %9, align 8
  br label %141

141:                                              ; preds = %128, %120, %110
  %142 = load %struct.ide_host*, %struct.ide_host** %9, align 8
  %143 = icmp eq %struct.ide_host* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %172

145:                                              ; preds = %141
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.ide_host*, %struct.ide_host** %9, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store %struct.ide_host* %148, %struct.ide_host** %150, align 8
  %151 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %152 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %151, i32 0, i32 3
  %153 = load %struct.ide_host*, %struct.ide_host** %9, align 8
  %154 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 2
  %161 = add nsw i32 97, %160
  %162 = trunc i32 %161 to i8
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %164 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = sdiv i32 %165, 10
  %167 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %168 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = srem i32 %169, 10
  %171 = call i32 @dev_info(i32* %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 signext %162, i32 %166, i32 %170)
  store i32 0, i32* %2, align 4
  br label %177

172:                                              ; preds = %144, %100, %94, %54
  %173 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %174 = call i32 @ide_release(%struct.pcmcia_device* %173)
  %175 = load i32, i32* @ENODEV, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %172, %145
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.pcmcia_device*) #1

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local %struct.ide_host* @idecs_register(i64, i64, i32, %struct.pcmcia_device*) #1

declare dso_local i32 @resource_size(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8 signext, i32, i32) #1

declare dso_local i32 @ide_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
