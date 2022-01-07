; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_setup-pci.c_ide_pci_init_two.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_setup-pci.c_ide_pci_init_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_port_info = type { i32 }
%struct.ide_host = type { i32, i8*, i32** }
%struct.ide_hw = type { i32 }

@IDE_HFLAG_SINGLE = common dso_local global i32 0, align 4
@IDE_HFLAG_NO_DMA = common dso_local global i32 0, align 4
@IDE_HFLAG_CS5520 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_pci_init_two(%struct.pci_dev* %0, %struct.pci_dev* %1, %struct.ide_port_info* %2, i8* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ide_port_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %struct.pci_dev*], align 16
  %10 = alloca %struct.ide_host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x %struct.ide_hw], align 16
  %16 = alloca [4 x %struct.ide_hw*], align 16
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.ide_port_info* %2, %struct.ide_port_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %17, i64 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 4, i32 2
  store i32 %24, i32* %13, align 4
  %25 = bitcast [4 x %struct.ide_hw*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 32, i1 false)
  %26 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %27 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IDE_HFLAG_SINGLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 3, i32* %14, align 4
  br label %34

33:                                               ; preds = %4
  store i32 15, i32* %14, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %36 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IDE_HFLAG_NO_DMA, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %43 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IDE_HFLAG_CS5520, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, 4
  store i32 %50, i32* %14, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  %53 = or i32 %52, 16
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %34
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %99, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sdiv i32 %58, 2
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %63
  %65 = load %struct.pci_dev*, %struct.pci_dev** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ide_setup_pci_controller(%struct.pci_dev* %65, i32 %66, %struct.ide_port_info* %67, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %61
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 0
  %80 = load %struct.pci_dev*, %struct.pci_dev** %79, align 16
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @pci_release_selected_regions(%struct.pci_dev* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %75
  br label %241

84:                                               ; preds = %61
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %86
  %88 = load %struct.pci_dev*, %struct.pci_dev** %87, align 8
  %89 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %15, i64 0, i64 %92
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x %struct.ide_hw*], [4 x %struct.ide_hw*]* %16, i64 0, i64 %96
  %98 = call i32 @ide_pci_setup_ports(%struct.pci_dev* %88, %struct.ide_port_info* %89, %struct.ide_hw* %93, %struct.ide_hw** %97)
  br label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %56

102:                                              ; preds = %56
  %103 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %104 = getelementptr inbounds [4 x %struct.ide_hw*], [4 x %struct.ide_hw*]* %16, i64 0, i64 0
  %105 = load i32, i32* %13, align 4
  %106 = call %struct.ide_host* @ide_host_alloc(%struct.ide_port_info* %103, %struct.ide_hw** %104, i32 %105)
  store %struct.ide_host* %106, %struct.ide_host** %10, align 8
  %107 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %108 = icmp eq %struct.ide_host* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %11, align 4
  br label %226

112:                                              ; preds = %102
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %116 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %115, i32 0, i32 2
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  store i32* %114, i32** %118, align 8
  %119 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %120 = icmp ne %struct.pci_dev* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %125 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %124, i32 0, i32 2
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* %123, i32** %127, align 8
  br label %128

128:                                              ; preds = %121, %112
  %129 = load i8*, i8** %8, align 8
  %130 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %131 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* @IRQF_SHARED, align 4
  %133 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %134 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 0
  %136 = load %struct.pci_dev*, %struct.pci_dev** %135, align 16
  %137 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %138 = call i32 @pci_set_drvdata(%struct.pci_dev* %136, %struct.ide_host* %137)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %140 = icmp ne %struct.pci_dev* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %128
  %142 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 1
  %143 = load %struct.pci_dev*, %struct.pci_dev** %142, align 8
  %144 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %145 = call i32 @pci_set_drvdata(%struct.pci_dev* %143, %struct.ide_host* %144)
  br label %146

146:                                              ; preds = %141, %128
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %211, %146
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sdiv i32 %149, 2
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %214

152:                                              ; preds = %147
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %154
  %156 = load %struct.pci_dev*, %struct.pci_dev** %155, align 8
  %157 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i32 @do_ide_setup_pci_device(%struct.pci_dev* %156, %struct.ide_port_info* %157, i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %152
  br label %226

166:                                              ; preds = %152
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %168
  %170 = load %struct.pci_dev*, %struct.pci_dev** %169, align 8
  %171 = call i64 @ide_pci_is_in_compatibility_mode(%struct.pci_dev* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %197

173:                                              ; preds = %166
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %175
  %177 = load %struct.pci_dev*, %struct.pci_dev** %176, align 8
  %178 = call i8* @pci_get_legacy_ide_irq(%struct.pci_dev* %177, i32 0)
  %179 = ptrtoint i8* %178 to i32
  %180 = load i32, i32* %12, align 4
  %181 = mul nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %15, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %186
  %188 = load %struct.pci_dev*, %struct.pci_dev** %187, align 8
  %189 = call i8* @pci_get_legacy_ide_irq(%struct.pci_dev* %188, i32 1)
  %190 = ptrtoint i8* %189 to i32
  %191 = load i32, i32* %12, align 4
  %192 = mul nsw i32 %191, 2
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %15, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %195, i32 0, i32 0
  store i32 %190, i32* %196, align 4
  br label %210

197:                                              ; preds = %166
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %12, align 4
  %200 = mul nsw i32 %199, 2
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %15, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %202, i32 0, i32 0
  store i32 %198, i32* %203, align 4
  %204 = load i32, i32* %12, align 4
  %205 = mul nsw i32 %204, 2
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %15, i64 0, i64 %207
  %209 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %208, i32 0, i32 0
  store i32 %198, i32* %209, align 4
  br label %210

210:                                              ; preds = %197, %173
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %147

214:                                              ; preds = %147
  %215 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %216 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %217 = getelementptr inbounds [4 x %struct.ide_hw*], [4 x %struct.ide_hw*]* %16, i64 0, i64 0
  %218 = call i32 @ide_host_register(%struct.ide_host* %215, %struct.ide_port_info* %216, %struct.ide_hw** %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %223 = call i32 @ide_host_free(%struct.ide_host* %222)
  br label %225

224:                                              ; preds = %214
  br label %241

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %225, %165, %109
  %227 = load i32, i32* %13, align 4
  %228 = sdiv i32 %227, 2
  store i32 %228, i32* %12, align 4
  br label %229

229:                                              ; preds = %233, %226
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %12, align 4
  %232 = icmp ne i32 %230, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %235
  %237 = load %struct.pci_dev*, %struct.pci_dev** %236, align 8
  %238 = load i32, i32* %14, align 4
  %239 = call i32 @pci_release_selected_regions(%struct.pci_dev* %237, i32 %238)
  br label %229

240:                                              ; preds = %229
  br label %241

241:                                              ; preds = %240, %224, %83
  %242 = load i32, i32* %11, align 4
  ret i32 %242
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ide_setup_pci_controller(%struct.pci_dev*, i32, %struct.ide_port_info*, i32) #2

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #2

declare dso_local i32 @ide_pci_setup_ports(%struct.pci_dev*, %struct.ide_port_info*, %struct.ide_hw*, %struct.ide_hw**) #2

declare dso_local %struct.ide_host* @ide_host_alloc(%struct.ide_port_info*, %struct.ide_hw**, i32) #2

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ide_host*) #2

declare dso_local i32 @do_ide_setup_pci_device(%struct.pci_dev*, %struct.ide_port_info*, i32) #2

declare dso_local i64 @ide_pci_is_in_compatibility_mode(%struct.pci_dev*) #2

declare dso_local i8* @pci_get_legacy_ide_irq(%struct.pci_dev*, i32) #2

declare dso_local i32 @ide_host_register(%struct.ide_host*, %struct.ide_port_info*, %struct.ide_hw**) #2

declare dso_local i32 @ide_host_free(%struct.ide_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
